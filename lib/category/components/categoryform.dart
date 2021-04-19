import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/cart/components/checkoutcart.dart';
import 'package:flutternguyencongloc/model/products.dart';

// ignore: must_be_immutable
class CategoryForm extends StatelessWidget {
  int cateID;
  CategoryForm(this.cateID);
  @override
  Widget build(BuildContext context) {
    final productsList = getProductsFromID(cateID);
    return Container(
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          itemCount:productsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.7
          ),

          itemBuilder: (context, index){
            return GestureDetector(
              child: Column(
                children: [
                  Image.asset(productsList[index].image, fit: BoxFit.fill,),
                  Text(productsList[index].title),
                  Text(productsList[index].price.toString()),
                ],
              ),
            );
          }
      )
    );
  }

  List<Products> getProductsFromID(int id){
    List<Products> tmp = [];
    final products = Products.init();
    for (int i = 0; i < products.length; i++){
      if(products[i].cateId == id){
        tmp.add(products[i]);
      }
    }
    return tmp;
  }
}
