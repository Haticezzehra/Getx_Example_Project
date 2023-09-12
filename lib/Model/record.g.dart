// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordModel _$$_RecordModelFromJson(Map<String, dynamic> json) =>
    _$_RecordModel(
      dateTime: DateTime.parse(json['dateTime'] as String),
      weight: json['weight'] as int,
      photo: json['photo'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_RecordModelToJson(_$_RecordModel instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'weight': instance.weight,
      'photo': instance.photo,
      'note': instance.note,
    };
