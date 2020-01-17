import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: productList(context)
          ),

          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(
                   left: 20,
                   top: 20,
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                       "TOTAL",
                       style: Theme.of(context).textTheme.body1,
                     ),
                     SizedBox(height: 5,),
                     Text(
                       "\$4250.00",
                       style: TextStyle(
                         color: Theme.of(context).primaryColor,
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                       ),
                     )
                   ],
                 ),
               ),

                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 20),
                  child: FlatButton(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: (){},
                  ),
                )
              ],
            ),
          ),
        ],
        ),
      );
  }

  Widget productList(context) {
    return ListView(
      children: <Widget>[
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
        productItem(),
       /* productItem(context, "Beoplay Speaker", "755", "assets/product-1.png"),
        productItem(context, "Leather Wristwatch", "450", "assets/product-2.png"),
        productItem(context, "Smart BlueTooth Speaker", "900", "assets/product-3.png"),
        productItem(context, "Smart Luggage", "100", "assets/product-4.png"),
        productItem(context, "Smartphone Case", "99", "assets/product-5.png"),
        productItem(context, "Speakers Stand", "49", "assets/product-6.png"),
        productItem(context, "AirPods", "199", "assets/product-7.png"),*/
      ],
    );
  }

  Widget productItem() {
    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
             Container(
               width: 100,
               height: 100,
               margin: EdgeInsets.all(10),
               child: Image.asset(
                   "assets/product-4.png",
                 fit: BoxFit.fitWidth,
               ),
             ),
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Titulo do Produto"),
                Text(
                  "\$200",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("-"),
                          onPressed: (){},
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: Text("1"),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("+"),
                          onPressed: (){},
                        )

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
