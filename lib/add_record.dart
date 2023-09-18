import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';

class AddRecord extends StatelessWidget {
  AddRecord({super.key});
  final _selectedValue = 70.obs;
  final _selectedDate = DateTime.now().obs;

  void pickedDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      _selectedDate.value = pickedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Weight"),
      ),
      body: Column(children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Row(children: [
            const Icon(FontAwesomeIcons.weightScale, size: 40),
            Obx(() => Stack(alignment: Alignment.bottomCenter, children: [
                  NumberPicker(
                    axis: Axis.horizontal,
                    minValue: 40,
                    maxValue: 200,
                    value: _selectedValue.value,
                    onChanged: (value) {
                      _selectedValue.value = value;
                    },
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey)),
                  ),
                  const Icon(FontAwesomeIcons.chevronUp, size: 17)
                ]))
          ]),
        ),
        GestureDetector(
          onTap: () async {
            pickedDate(context);
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Row(children: [
              const Icon(
                FontAwesomeIcons.calendar,
                size: 40,
              ),
              Obx(() =>
                  Text(DateFormat('EEE MMM d').format(_selectedDate.value)))
            ]),
          ),
        )
      ]),
    );
  }
}
