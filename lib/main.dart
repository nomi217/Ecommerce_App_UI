import 'package:ecom/ecom_ui.dart';
import 'package:flutter/material.dart';
import 'ecom_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EcomUI(),
    );
  }
}
