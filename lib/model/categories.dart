import 'package:flutter/material.dart';

class Categories {
  int id;
  String title;
  String image;

  Categories({this.id, this.title, this.image});

  static List<Categories> init() {
    List<Categories> data = [
      Categories(
          id: 1, title: "HighLand", image: "assets/images/ic_highland.jpeg"),
      Categories(
          id: 2, title: "CirceK", image: "assets/images/ic_circlek.png"),
      Categories(
          id: 3, title: "MiniStop", image: "assets/images/ic_ministop.png"),
      Categories(
          id: 4, title: "SeveneLeven", image: "assets/images/ic_seveneleven.png"),
      Categories(
          id: 5, title: "VinMart", image: "assets/images/ic_vinmart.jpg"),
    ];
    return data;
  }
}