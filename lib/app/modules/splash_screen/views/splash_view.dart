import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/splash_screen/controllers/splash_controller.dart';
import 'package:movie_ticket/app/modules/splash_screen/views/widget/splash_body.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(
        controller: controller,
      ),
    );
  }
}
