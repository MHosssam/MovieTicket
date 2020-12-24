import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/select/controllers/select_controller.dart';

class SelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SelectController>(
      () => SelectController(),
    );
  }
}
