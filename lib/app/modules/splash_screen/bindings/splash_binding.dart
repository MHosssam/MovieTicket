import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/splash_screen/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
  }
}
