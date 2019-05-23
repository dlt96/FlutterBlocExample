// GENERATED CODE - DO NOT MODIFY BY HAND

part of thumbnail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Thumbnail> _$thumbnailSerializer = new _$ThumbnailSerializer();

class _$ThumbnailSerializer implements StructuredSerializer<Thumbnail> {
  @override
  final Iterable<Type> types = const [Thumbnail, _$Thumbnail];
  @override
  final String wireName = 'Thumbnail';

  @override
  Iterable serialize(Serializers serializers, Thumbnail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Thumbnail deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Thumbnail extends Thumbnail {
  @override
  final String url;
  @override
  final int height;
  @override
  final int width;

  factory _$Thumbnail([void Function(ThumbnailBuilder) updates]) =>
      (new ThumbnailBuilder()..update(updates)).build();

  _$Thumbnail._({this.url, this.height, this.width}) : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('Thumbnail', 'url');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('Thumbnail', 'height');
    }
    if (width == null) {
      throw new BuiltValueNullFieldError('Thumbnail', 'width');
    }
  }

  @override
  Thumbnail rebuild(void Function(ThumbnailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailBuilder toBuilder() => new ThumbnailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Thumbnail &&
        url == other.url &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, url.hashCode), height.hashCode), width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Thumbnail')
          ..add('url', url)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class ThumbnailBuilder implements Builder<Thumbnail, ThumbnailBuilder> {
  _$Thumbnail _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  ThumbnailBuilder();

  ThumbnailBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _height = _$v.height;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thumbnail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Thumbnail;
  }

  @override
  void update(void Function(ThumbnailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Thumbnail build() {
    final _$result =
        _$v ?? new _$Thumbnail._(url: url, height: height, width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
