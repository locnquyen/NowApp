import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/category/components/categoryform.dart';
import 'package:flutternguyencongloc/homepage/components/homeheader.dart';


// ignore: must_be_immutable
class Body extends StatelessWidget {
  int cateId;
  Body(this.cateId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeHeader(),
      ),
      body: CategoryForm(cateId),
    );
  }
}