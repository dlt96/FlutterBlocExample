library detail_event;

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detail_event.g.dart';

abstract class DetailEvent {}

abstract class ShowDetail extends DetailEvent
    implements Built<ShowDetail, ShowDetailBuilder> {
  String get id;

  ShowDetail._();

  factory ShowDetail([updates(ShowDetailBuilder b)]) = _$ShowDetail;
}
