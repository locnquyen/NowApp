import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternguyencongloc/category/categorypage.dart';
import 'package:flutternguyencongloc/detail/productpage.dart';
import 'package:flutternguyencongloc/model/categories.dart';

class CategoriesStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories =  Categories.init();
    return Padding(
        padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [Expanded(child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green))),
              Text('See more',style: TextStyle(fontSize: 16, color: Colors.lightGreen),)
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              //CategoriesItem
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:categories.length,
                  itemBuilder: (context, index){
                    return CategoriesItem( category : categories[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CategoriesItem extends StatelessWidget {
  Categories category;
  CategoriesItem({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, CategoryPage.routeName,
          arguments: this.category.id);
        },
        child: Image.asset(category.image),
      )
      //
    );
  }
}
