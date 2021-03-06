import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.page.dart';

class LoginPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(
            left: 20,
            bottom: 40,
            right: 20,
            top: 60,
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
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 60,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Sign in to continue",
                              ),
                            ],
                          ),
                          FlatButton(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                              );
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      TextFormField(
                        autofocus: true,
                       // cursorColor: Colors.pink,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                     Container(
                       height: 40,
                       alignment: Alignment.centerRight,
                       child:  FlatButton(
                         child: Text(
                           "Forgot your password?",
                           style: TextStyle(
                             color: Theme.of(context).accentColor,
                           ),
                         ),
                         onPressed: (){},
                       ),
                     ),
                      SizedBox(height: 8,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: FlatButton(
                           child: Text(
                             "Sing In",
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                             ),
                           ),
                          onPressed: (){
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                "- OR -",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height:24,
                      child: Image.asset("assets/facebook.png",),
                      ),
                      Text("Sign In with Facebook"),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 2.0,
                    color: Colors.white,
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 24,
                        child: Image.asset("assets/google.png"),
                      ),
                      Text(
                        "Sign In with Google",
                      ),
                    ],
                  ),
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
