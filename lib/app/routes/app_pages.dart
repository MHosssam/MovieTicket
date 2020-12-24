import 'package:movie_ticket/app/modules/select/views/select_view.dart';
import 'package:movie_ticket/app/modules/select/bindings/select_binding.dart';
import 'package:movie_ticket/app/modules/home/views/home_view.dart';
import 'package:movie_ticket/app/modules/home/bindings/home_binding.dart';


import 'package:get/get.dart';
import 'package:movie_ticket/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:movie_ticket/app/modules/splash_screen/views/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page:()=> SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.SELECT, 
      page:()=> SelectView(), 
      binding: SelectBinding(),
    ),
  ];
}