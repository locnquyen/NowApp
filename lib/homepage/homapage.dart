import 'package:flutter/material.dart';

import 'components/body.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int selectIndex = 0;
  static String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Body(),
    );
  }
}
