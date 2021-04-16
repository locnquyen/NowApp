
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutternguyencongloc/homepage/homapage.dart';
import 'package:flutternguyencongloc/signup/signuppage.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Food Now', style: TextStyle(fontSize: 32, color: Colors.blue),),
                  Text( "Sign in with your email and password  \n or continue with social media",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.green, fontSize: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Username",
                          prefixIcon: Icon(Icons.mail_outline)
                      ),

                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "PassWord",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.check_box),
                        Text("Remember me", style: TextStyle(fontSize: 16, color: Colors.green))
                      ],
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HomePage.routeName);
                        },
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child:
                        Text("Continue",style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                            color: Color(0xFFF5F6F9),
                            shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset("assets/icons/facebook-2.svg"),
                          ),
                          Container(

                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F6F9),
                                shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset("assets/icons/google-icon.svg"),
                          ),
                          Container(

                            height: 40,
                            width: 40,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F6F9),
                                shape: BoxShape.circle
                            ),
                            child: SvgPicture.asset("assets/icons/twitter.svg"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don\'t have an account?", style: TextStyle(color: Colors.green,fontSize: 14),),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                             //final result = await Navigator.pushNamed(context, SignUpPage.routeName)
                            },
                            child: Text("Sign Up", style: TextStyle(color: Colors.green,fontSize: 14),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
