part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart
abstract class Routes {
  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  // ignore: non_constant_identifier_names
  static String SELECT(String id) => HOME + '/$id';
}

// '$PRODUCTS/$productId'
abstract class _Paths {
  static const SPLASH = '/splash';
  static const HOME = '/home';
  // ignore: unused_field
  static const SELECT = '/:id';
}
