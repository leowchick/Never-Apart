import 'package:flutter/material.dart';
import 'package:never_apart/theme.dart';
import 'package:never_apart/views/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: Login(),
    );
  }
}

