import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:youtube_search/network/youtube_data_source.dart';
import 'package:youtube_search/repository/YoutubeRepository.dart';
import 'package:youtube_search/ui/detail/detail_bloc.dart';
import 'package:youtube_search/ui/search/search_bloc.dart';

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((factory) => YoutubeDataSource(factory.resolve()))
    ..registerFactory((factory) => YoutubeRepository(factory.resolve()))
    ..registerFactory((factory) => SearchBloc(factory.resolve()))
    ..registerFactory((c) => DetailBloc(c.resolve()));
}
