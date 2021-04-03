

import 'package:flutter/cupertino.dart';
import 'package:flutternguyencongloc/signin/components/signinform.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            headerScreen(context),
            SignInForm(),
            SizedBox(height: 20),
            footerScreen(context),
          ],
        ),
      ),
    ));
  }
  Widget headerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2 ,
      alignment: Alignment.bottomRight,
      child: Image.asset("dish.png"),
    );
  }
  Widget footerScreen(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.35 ,
      alignment: Alignment.bottomLeft,
      child: Image.asset("dish_2.png"),
    );
  }
}
