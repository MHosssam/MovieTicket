import 'package:get/get.dart';
import 'package:movie_ticket/model/page_model.dart';

class SplashController extends GetxController {
  final currentposition = 0.obs;
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
  ].obs;
}
