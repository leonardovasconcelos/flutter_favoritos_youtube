import 'package:flutter/material.dart';
import 'package:flutter_flutter_tube/screens/home.dart';
import 'package:flutter_flutter_tube/api.dart';

void main() {

  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tube',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


