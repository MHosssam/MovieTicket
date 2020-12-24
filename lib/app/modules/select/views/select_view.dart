import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/select/controllers/select_controller.dart';



class SelectView extends GetView<SelectController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/television.png',
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue.value = newValue;
                          },
                        ),
                      ),
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue1.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue1.value = newValue;
                          },
                        ),
                      ),
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue2.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue2.value = newValue;
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue4.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue4.value = newValue;
                          },
                        ),
                      ),
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue5.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue5.value = newValue;
                          },
                        ),
                      ),
                      Obx(
                        () => Checkbox(
                          value: controller.checkBoxValue6.value,
                          activeColor: Colors.green,
                          onChanged: (bool newValue) {
                            controller.checkBoxValue6.value = newValue;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue7.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue7.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue8.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue8.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue9.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue9.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue10.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue10.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue11.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue11.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue12.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue12.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue13.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue13.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue14.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue14.value = newValue;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue15.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue15.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue16.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue16.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue17.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue17.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue18.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue18.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue19.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue19.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue20.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue20.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue21.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue21.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue22.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue22.value = newValue;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue23.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue23.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue24.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue24.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue25.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue25.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue26.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue26.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue27.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue27.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue28.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue28.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue29.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue29.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue30.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue30.value = newValue;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue31.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue31.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue32.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue32.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue33.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue33.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue34.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue34.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue35.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue35.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue36.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue36.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue37.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue37.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue38.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue38.value = newValue;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue39.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue39.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue40.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue40.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue41.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue41.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue42.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue42.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue43.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue43.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue44.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue44.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue45.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue45.value = newValue;
                      },
                    ),
                  ),
                  Obx(
                    () => Checkbox(
                      value: controller.checkBoxValue46.value,
                      activeColor: Colors.green,
                      onChanged: (bool newValue) {
                        controller.checkBoxValue46.value = newValue;
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    Get.defaultDialog(
                      title: "تاكيد الحجز",
                      content: Column(
                        children: [
                          Text('سعر التذكره الواحده 80 جنيه' ,style: TextStyle(fontSize: 20),),
                          Text('لقد اخترت 5 مقاعد',style: TextStyle(fontSize: 20),),
                          Text('اجمالي الملبغ 400 جنيه',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      confirm: FlatButton(
                        onPressed: () {
                          Get.back();
                          Get.snackbar(
                            'تم تاكيد الحجز',
                            ' ',
                            colorText: Colors.white,
                          );
                        },
                        child: Text('تم'),
                        color: Colors.amber,
                      ),
                      cancel: FlatButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('الغاء'),
                        color: Colors.red,
                      ),
                      barrierDismissible: false,
                    );
                  },
                  child: Text(
                    'تاكيد',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  minWidth: double.infinity,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
