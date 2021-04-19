
import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/category/components/body.dart';

class CategoryPage extends StatelessWidget {
  static String routeName = '/category_page';
  @override
  Widget build(BuildContext context) {
    //int id = ModalRoute.of(context).settings.arguments;
    int id = ModalRoute.of(context).settings.arguments;
    return Body(id);
  }
}