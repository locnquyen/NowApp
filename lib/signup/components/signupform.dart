
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            emailTextFormField(),
            SizedBox(height: 20,),
            passwordTextFormField(),
            SizedBox(height: 20,),
            conformTextFormField(),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.green,
                child: Text("Continue", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(("assets/icons/google-icon.svg")),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset("assets/icons/twitter.svg"),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

  TextFormField emailTextFormField(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter your email",
        suffixIcon: Icon(Icons.email_outlined)
      ),
    );
  }
  TextFormField passwordTextFormField(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Enter your password",
          suffixIcon: Icon(Icons.lock_outline)
      ),
    );
  }
  TextFormField conformTextFormField(){
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Re-enter your email",
          suffixIcon: Icon(Icons.lock_outline)
      ),
    );
  }
}

