import 'package:flutter/material.dart';



class PageModel {
  String _title;
  String _image;
  String _cover;

  PageModel(this._title, this._image, this._cover);



  String get cover => _cover;

  String get image => _image;

  String get title => _title;
}