import 'package:flutter/cupertino.dart';

class PageModel {
  final int id;
  final String title;
  final String image;

  PageModel({
    @required this.title,
    @required this.image,
    @required this.id,
  });
}
