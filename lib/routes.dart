

import 'package:flutter/cupertino.dart';
import 'package:flutternguyencongloc/homepage/homapage.dart';

import 'cart/cartpage.dart';
import 'detail/productpage.dart';
import 'signin/signinpage.dart';
import 'signup/signuppage.dart';
import 'splashpage.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName : (context) => SignInPage(),
  SignUpPage.routeName : (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
  ProductPage.routeName : (context) => ProductPage(),
  CartPage.routeName: (context) => CartPage(),
};
