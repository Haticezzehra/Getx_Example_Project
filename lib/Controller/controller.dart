import 'package:get/get.dart';
import 'package:getx_example/Model/record.dart';

class Controller extends GetxController {
  var records = <RecordModel>[
    RecordModel(dateTime: DateTime.now(), weight: 80, note: "A"),
    RecordModel(dateTime: DateTime.now(), weight: 100, note: "B"),
    RecordModel(dateTime: DateTime.now(), weight: 90, note: "B"),
    RecordModel(dateTime: DateTime.now(), weight: 70, note: "B"),
    RecordModel(dateTime: DateTime.now(), weight: 60, note: "B"),
    RecordModel(dateTime: DateTime.now(), weight: 50, note: "B"),
  ].obs;

  void addRecord() {
    records
        .add(RecordModel(dateTime: DateTime.now(), weight: 50, note: "Xxxx"));
  }

  void recordRemove(RecordModel record) {
    records.remove(record);
  }
}
