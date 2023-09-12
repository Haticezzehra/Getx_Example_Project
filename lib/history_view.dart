import 'package:flutter/material.dart';
import 'package:getx_example/Widgets/records_list_tile.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Graph"),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),//yaylanma hareketi yapıyor
        children: const [
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
          RecordListTile(),
        ],
      ),
    );
  }
}
