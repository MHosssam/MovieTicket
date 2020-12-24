import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/home/controllers/home_controller.dart';
import 'package:movie_ticket/app/routes/app_pages.dart';
import 'package:movie_ticket/model/page_model.dart';

import 'eshtrak.dart';

class HomeView extends GetView<HomeController> {
  List<PageModel> model;
  ValueNotifier<int> _pageview = ValueNotifier(0);

  void _addPages() {
    model = List<PageModel>();
    model.add(
        PageModel('Fury', 'assets/images/fury.jpg', 'assets/images/fury.jpg'));
    model.add(PageModel('Fast And furious ', 'assets/images/fast.jpg',
        'assets/images/fast.jpg'));
    model.add(PageModel(
        'Taken', 'assets/images/taken.jpg', 'assets/images/taken.jpg'));
    model.add(PageModel('Transporter', 'assets/images/transporter.jpg',
        'assets/images/transporter.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Scaffold(
        appBar: AppBar(
          title: Text('Book Ticket'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height * 0.35,
                child: Swiper(
                  itemBuilder: (context, Index) {
                    return Positioned(
                      bottom: 50,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: ExactAssetImage(model[Index].image),
                          fit: BoxFit.fill,
                        )),
                      ),
                    );
                  },
                  itemCount: model.length,
                  onIndexChanged: (indexPage) {
                    _pageview.value = indexPage;
                  },
                  autoplay: true,
                ),
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
                    Obx(
                      () => DropdownButton(
                        items: <String>[
                          'taken',
                          'fast and furious',
                          'Fury',
                          'Transporter',
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        value: controller.dropValue.value,
                        onChanged: (val) {
                          controller.dropValue.value = val;
                        },
                      ),
                    ),
                    Text('اختار اسم الفيلم'),
                  ],
                ),
              ),
              EshtrakBody('اختار اليوم', controller.dateStart),
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
                    Obx(
                      () => DropdownButton(
                        items: <String>[
                          '8 am -> 10 am',
                          '10.3 am -> 12.3 am',
                          '1 pm -> 2 pm',
                          '2.3 pm -> 4.3 pm',
                          '5 pm -> 5.3 pm',
                          '6 pm -> 8 pm',
                          '8.3 pm -> 10.3 pm',
                          '11 pm -> 1 am',
                          '1.3 am -> 3.3 am',
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        value: controller.dropValue1.value,
                        onChanged: (val) {
                          controller.dropValue1.value = val;
                        },
                      ),
                    ),
                    Text('اختار الوقت'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: () {
                    Get.toNamed(Routes.SELECT);
                  },
                  child: Text(
                    'اختار المقعد',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  color: Colors.blue,
                  minWidth: double.infinity,
                ),
              )
            ],
          ),
        ));
  }
}
