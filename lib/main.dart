
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App de shopping",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LoginPages(),
    );
  }
}
