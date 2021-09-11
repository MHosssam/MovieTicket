import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/state_manager.dart';
import 'package:movie_ticket/app/modules/home/controllers/home_controller.dart';

class EshtrakBody extends StatelessWidget {
  final String title;
  final HomeController controller;

  EshtrakBody({
    @required this.title,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        DatePicker.showDatePicker(
          context,
          showTitleActions: true,
          minTime: DateTime.now(),
          maxTime: DateTime(2025, 1, 1),
          theme: DatePickerTheme(
            headerColor: Colors.black,
            backgroundColor: Colors.blue,
            itemStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            doneStyle: TextStyle(
              color: Colors.blue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            cancelStyle: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          onConfirm: (DateTime date) {
            controller.dateText.value = date;
          },
          currentTime: DateTime.now(),
          locale: LocaleType.ar,
        );
      },
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Obx(
          () => Row(
            mainAxisAlignment: (controller.dateText.value != null)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              if (controller.dateText.value != null)
                Text(
                  "${controller.dateText}".substring(0, 11),
                ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
