import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/home/controllers/home_controller.dart';
import 'package:movie_ticket/app/routes/app_pages.dart';

import 'eshtrak.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf8f3),
      appBar: AppBar(
        title: Text('Book Ticket'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                height: MediaQuery.of(context).size.height * 0.40,
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    final item = controller.model[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(
                            item.image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                  itemCount: controller.model.length,
                  itemWidth: Get.width / 2,
                  // loop: false,
                  index: controller.currentMovie.value,
                  onIndexChanged: (value) {
                    controller.currentMovie.value = value;
                  },
                  layout: SwiperLayout.STACK,
                ),
              ),
              ...controller.model
                  .where(
                      (element) => element.id == controller.currentMovie.value)
                  .map(
                (e) {
                  return Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 14.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Text('${e.title}'),
                  );
                },
              ),
              EshtrakBody(
                title: 'اختار اليوم',
                controller: controller,
              ),
              Container(
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
                    DropdownButton(
                      items: controller.dateList.map(
                        (String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        },
                      ).toList(),
                      value: controller.dropValue1.value,
                      onChanged: (val) {
                        controller.dropValue1.value = val;
                      },
                    ),
                    Text('اختار الوقت'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    if (controller.dateText.value != null) {
                      Get.toNamed(
                        Routes.SELECT('${controller.currentMovie.value}'),
                      );
                    } else {
                      Get.snackbar(
                        'تحذير',
                        'يجب عليك اختيار تاريخ و موعد الفيلم',
                        colorText: Colors.white,
                        backgroundColor: Colors.red,
                        duration: Duration(milliseconds: 1500),
                      );
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'اختار المقعد',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
