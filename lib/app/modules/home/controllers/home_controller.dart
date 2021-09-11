import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/model/page_model.dart';

class HomeController extends GetxController {
  final dropValue = 'taken'.obs;
  final dropValue1 = '8 am -> 10 am'.obs;
  final currentMovie = 0.obs;
  final dateText = Rxn<DateTime>();
  final pageview = ValueNotifier(0);

  final dateList = <String>[
    '8 am -> 10 am',
    '10.3 am -> 12.3 am',
    '1 pm -> 2 pm',
    '2.3 pm -> 4.3 pm',
    '5 pm -> 5.3 pm',
    '6 pm -> 8 pm',
    '8.3 pm -> 10.3 pm',
    '11 pm -> 1 am',
    '1.3 am -> 3.3 am',
  ].obs;
  final model = <PageModel>[
    PageModel(
      id: 0,
      title: 'Fury',
      image: 'assets/images/fury.jpg',
    ),
    PageModel(
      id: 1,
      title: 'Fast And furious ',
      image: 'assets/images/fast.jpg',
    ),
    PageModel(
      id: 2,
      title: 'Taken',
      image: 'assets/images/taken.jpg',
    ),
    PageModel(
      id: 3,
      title: 'Transporter',
      image: 'assets/images/transporter.jpg',
    ),
  ];
}
