import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/homepage/components/homeheader.dart';
import 'package:flutternguyencongloc/homepage/components/menuheader.dart';
import 'package:flutternguyencongloc/homepage/fragment/account_fragment.dart';
import 'package:flutternguyencongloc/homepage/fragment/favorite_fragment.dart';
import 'package:flutternguyencongloc/homepage/fragment/home_fragment.dart';
import 'package:flutternguyencongloc/homepage/fragment/notification_fragment.dart';
import 'package:flutternguyencongloc/model/products.dart';
import 'package:flutternguyencongloc/model/utilities.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {

    List screen = [
      HomeDetail(),
      FavoriteDetail(Utilities.data),
      //FavoriteDetail(),
      NotificationDetail(),
      AccountFragment(),
      ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: flag ? HomeHeader() : MenuHeader(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index){
          setState(() {
            selectIndex = index;
            if(selectIndex != 3){
              flag = true;
            }else{
              flag = false;
            }
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favotie"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Account")
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            screen[selectIndex]
          ],
        ),
      ),
    );
  }
}
