import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
             children: <Widget>[
               Container(
                 height: 420,
                 decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: new Offset(1, 2.0),
                      ),
                    ],
                 ),
                 child: Padding(
                   padding: EdgeInsets.only(
                     top: 60,
                     right: 15,
                     left: 15,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                       Text(
                           "Signup",
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       SizedBox(height: 10),
                       TextFormField(
                         keyboardType: TextInputType.text,
                         decoration: InputDecoration(
                           labelText: "Name",
                           labelStyle: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                         style: TextStyle(fontSize: 20),
                       ),
                       SizedBox(height: 10,),
                       TextFormField(
                         keyboardType: TextInputType.emailAddress,
                         decoration: InputDecoration(
                           labelText: "Email",
                           labelStyle: TextStyle(
                             fontSize: 16,
                             color: Colors.black,
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                         style: TextStyle(
                           fontSize: 20
                         ),
                       ),
                       SizedBox(height: 10),
                       TextFormField(
                         obscureText: true,
                         keyboardType: TextInputType.visiblePassword,
                         decoration: InputDecoration(
                           labelText: "Password",
                           labelStyle: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.w400,
                           )
                         ),
                         style: TextStyle(
                           fontSize: 20
                         ),
                       ),
                       SizedBox(height: 40),
                       Container(
                         width: double.infinity,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(
                             Radius.circular(5),
                           ),
                           color: Theme.of(context).accentColor,
                         ),
                         child: FlatButton(
                           child: Text(
                             "Signup",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                             ),
                           ),
                           onPressed: (){},
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             ],
          ),
        ),
      ),
    );
  }
}
