import 'package:get/get.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final dropValue = 'taken'.obs;
  final dropValue1 = '8 am -> 10 am'.obs;

  final  dateStart = DateTime.utc(2021, 1, 1).obs;

  Future<DateTime> datePicker(DateTime initial) async {
    final date = await DatePicker.showDatePicker(
      Get.overlayContext,
      showTitleActions: true,
      minTime: DateTime(2021, 1, 1),
      maxTime: DateTime(2030, 12, 30),
      onChanged: (date) {
        print('change $date');
        return date;
      },
      onConfirm: (date) {
        return date;
      },
      currentTime: initial,
    );
    return date;
  }
}
