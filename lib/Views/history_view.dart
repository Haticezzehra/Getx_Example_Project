import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/Controller/controller.dart';
import 'package:getx_example/Model/record.dart';
import 'package:getx_example/Widgets/records_list_tile.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<RecordModel> records = _controller.records;
    return Obx(() => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("History"),
          actions: [
            IconButton(
                onPressed: () {
                  _controller.addRecord();
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: records.isEmpty
            ? Center(
                child: Container(
                  child: const Text("Please Add Some Records"),
                ),
              )
            : ListView(
                physics:
                    const BouncingScrollPhysics(), //yaylanma hareketi yapıyor)
                children: records
                    .map((record) => RecordListTile(record: record))
                    .toList())));
  }
}
