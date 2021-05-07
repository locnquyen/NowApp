import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/cart/cartpage.dart';
import 'package:flutternguyencongloc/model/cart.dart';

// ignore: must_be_immutable
class HomeHeader extends StatelessWidget {
  int total;
  @override
  Widget build(BuildContext context) {
    total = Cart.cart.length;
    return Row(
      children: [
        Expanded(child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search product",
              prefixIcon: Icon(Icons.search)
          ),
        )),
        Container(
          height: 40,
          width: 40,
          child: Badge(
            position: BadgePosition.topEnd(top: 0, end: 0),
            badgeContent: Text(
              total.toString(), style: TextStyle(color: Colors.white, fontSize: 10)
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                final result = Navigator.pushNamed(context, CartPage.routeName);
                result.then((value) {
                  setState(){
                    total = Cart.cart.length;
                  }
                });
              },
            ),
          ),
        )

//        GestureDetector(
//        onTap:(){
//          Navigator.pushNamed(context, CartPage.routeName);
//        },
//          child: Container(
//            height: 40,
//            width: 40,
//            padding: EdgeInsets.all(10),
//             child: Icon(Icons.shopping_cart_outlined)),
//        ),
      ],
    );
  }
}
