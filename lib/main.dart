
import 'package:facebook_ui/pages/mainPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "facebook",
      theme: ThemeData(
          primarySwatch: Colors.grey,
          backgroundColor: Colors.black
         ),
      home: mainPage(),


    );
  }
}
