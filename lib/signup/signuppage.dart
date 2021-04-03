
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpPage extends StatelessWidget {
  static String routeName="/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text("Sign Up", style: TextStyle(color: Colors.white),)
      ),
      body: Body(),
    );
  }
}
