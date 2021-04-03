

import 'package:flutter/cupertino.dart';

import 'signin/signinpage.dart';
import 'signup/signuppage.dart';
import 'splashpage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName : (context) => SignInPage(),
  SignUpPage.routeName : (context) => SignUpPage(),


};
