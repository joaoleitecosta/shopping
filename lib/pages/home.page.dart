
import 'package:flutter/material.dart';

import 'package:shopping/category/category-list.widget.dart';
import 'package:shopping/products/product-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 45),
            SearchBox(),
            SizedBox(height: 20,),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(height: 10,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Text(
                   "Best Selling",
                   style: TextStyle(
                     fontSize: 40,
                   ),
                ),
                FlatButton(
                  child: Text("See All"),
                  onPressed: (){},
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 320,
              child: ProductList(),
            )
          ],
        ),
      ),
    );
  }
}

