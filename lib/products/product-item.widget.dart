
import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductItem extends StatelessWidget {

  final String image;
  final String title;
  final String description;
  final double prince;

  ProductItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.prince
});

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        width: 170,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ),
                );
              },
              child: Image.asset(this.image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,

              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 45,
              child: Text(
                this.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height:20,),
            Text(
              this.description,
              style: TextStyle(
                  fontSize: 14
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "\$ $prince",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ],
        )
    );
  }
}
