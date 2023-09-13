import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/Controller/controller.dart';
import 'package:getx_example/Model/record.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  RecordListTile({Key? key, required this.record}) : super(key: key);
  final RecordModel record;
  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ListTile(
          leading: buildDate(),
          title: buildWeight(),
          trailing: buildIcons(),
        ),
      ),
    );
  }

  Row buildIcons() {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      const IconButton(
          onPressed: null, icon: Icon(Icons.edit, color: Colors.grey)),
      IconButton(
          onPressed: () {
            controller.recordRemove(record);
          },
          icon: const Icon(Icons.delete, color: Colors.red))
    ]);
  }

  Center buildWeight() => Center(child: Text('${record.weight}'));

  Text buildDate() => Text(DateFormat('EEE MMM d').format(record.dateTime));
}
