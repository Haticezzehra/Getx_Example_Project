import 'package:freezed_annotation/freezed_annotation.dart';
part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class RecordModel with _$RecordModel {
  factory RecordModel({
    required DateTime dateTime,
    required int weight,
    String? photo,
    String? note,
  }) = _RecordModel;

  factory RecordModel.fromJson(Map<String, dynamic> json) =>
      _$RecordModelFromJson(json);
}
