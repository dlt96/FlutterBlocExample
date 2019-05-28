import 'package:bloc/bloc.dart';
import 'package:youtube_search/repository/YoutubeRepository.dart';
import 'package:youtube_search/ui/search/search_event.dart';
import 'package:youtube_search/ui/search/search_state.dart';
import 'package:youtube_search/data/model/search/youtube_search_error.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final YoutubeRepository _youtubeRepository;

  SearchBloc(this._youtubeRepository) : super();

  void onSearchInitiated(String query) {
    dispatch(SearchInitiated((b) => b..query = query));
  }

  void fetchNextResultPage() {
    dispatch(FetchNextResultPage());
  }

  @override
  SearchState get initialState => SearchState.initial();

  @override
  Stream<SearchState> mapEventToState(
      SearchState currentState, SearchEvent event) async* {
    if (event is SearchInitiated) {
      yield* mapSearchInitiated(event);
    } else if (event is FetchNextResultPage) {
      yield* mapFetchNextResultPage();
    }
  }

  Stream<SearchState> mapFetchNextResultPage() async* {
    try {
      final nextPageResults = await _youtubeRepository.fetchNextResultPage();
      yield SearchState.success(currentState.searchResults + nextPageResults);
    } on NoNextPageTokenException catch (_) {
      yield currentState.rebuild((b) => b..hasReachedEndOfResults = true);
    } on SearchNotInitiatedException catch (e) {
      yield SearchState.failure(e.message);
    } on YoutubeSearchError catch (e) {
      yield SearchState.failure(e.message);
    }
  }

  Stream<SearchState> mapSearchInitiated(SearchInitiated event) async* {
    if (event.query.isEmpty) {
      yield SearchState.initial(); //we add one search state to de stream
    } else {
      yield SearchState.loading();

      try {
        final searchResult = await _youtubeRepository.searchVideos(event.query);
        yield SearchState.success(searchResult);
      } on YoutubeSearchError catch (e) {
        yield SearchState.failure(e.message);
      } on NoSearchResultException catch (e) {
        yield SearchState.failure(e.message);
      }
    }
  }
}
