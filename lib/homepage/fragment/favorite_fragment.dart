import 'package:flutter/cupertino.dart';
import 'package:flutternguyencongloc/model/products.dart';

// ignore: must_be_immutable
class FavoriteDetail extends StatelessWidget {

  List<Products> products ;
  FavoriteDetail(this.products);
  //final products =  Products.init();
  @override
  Widget build(BuildContext context) {
    print(products.length.toString());
    return Expanded(
        child: Container(
          child: ListView.builder(
            //scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index){
                return ProductItemList(product:  products[index],);
              }
          ),
        )
    );
  }
}
// ignore: must_be_immutable
class ProductItemList extends StatelessWidget {
  Products product;

  ProductItemList({this.product});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(product.image, fit: BoxFit.fill,),
            ),
            SizedBox(width: 5,),
            Expanded(
              child: SizedBox(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title),
                      Expanded(child: Text(product.description, maxLines: 5,overflow: TextOverflow.ellipsis,))
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
