import 'package:freezed_annotation/freezed_annotation.dart';



@freezed
class Record  with _$Record {
 factory Record({required  DateTime  dateTime, required  int weight, String? photo,  String? note})
 factory Record.fromJson
  
}
