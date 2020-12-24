import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:movie_ticket/app/modules/home/controllers/home_controller.dart';
import 'package:intl/intl.dart';

class EshtrakBody extends GetView<HomeController> {
  final String title;
  final Rx<DateTime> time;

  EshtrakBody(this.title, this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() => Text("${DateFormat.yMMMd().format(time.value)}")),
          FlatButton(
            child: Text(title),
            onPressed: () async {
              final date = await controller.datePicker(time.value);
              time.value = date;
            },
          ),
        ],
      ),
    );
  }
}
