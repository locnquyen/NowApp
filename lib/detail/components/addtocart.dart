import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/model/cart.dart';
import 'package:flutternguyencongloc/model/products.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class AddProductToCart extends StatefulWidget {
  Products product;


  AddProductToCart({this.product});

  @override
  _AddProductToCartState createState() => _AddProductToCartState();
}

class _AddProductToCartState extends State<AddProductToCart> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        onPressed: () {
          Cart cart = Cart();
          cart.addProductToCart(widget.product);
          print(cart.getCart().length.toString());
          Fluttertoast.showToast(
              msg: "Add to cart",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.green,
        child: Text("Add to cart", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
    );
  }
}


