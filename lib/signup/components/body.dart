
import 'package:flutter/material.dart';

import 'signupform.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      alignment: Alignment.center,
      child: Padding(

        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Register Account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold, color: Colors.green, height: 2) ),
            Text("Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF4caf50))
            ),
            SignUpForm()
          ],
        ),
      ),
    ));
  }
}

