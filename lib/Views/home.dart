import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/Views/add_records.dart';
import 'package:getx_example/Views/graph_view.dart';
import 'package:getx_example/Views/history_view.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  var temp = 0.obs;
  final _currenTab = 0.obs;
  var currentScreen = Rx<Widget>(const GraphScreen());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: currentScreen(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const AddRecord());
            },
            backgroundColor: Colors.black,
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            height: 100,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            gapLocation: GapLocation.center,
            icons: const [Icons.show_chart, Icons.history],
            iconSize: 30,
            activeIndex: _currenTab.value,
            onTap: (int) {
              _currenTab.value = int;
              print(int);
              ekranDegistir(int);
            },
            backgroundColor: Colors.black,
          ),
        ));
  }

  Future<void> ekranDegistir(int i) async {
    if (i == 1) {
      currentScreen.value = const GraphScreen();
    } else {
      currentScreen.value = HistoryScreen();
    }
  }
}
