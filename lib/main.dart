import 'package:flutter/material.dart';
import 'package:makefood/home.dart';
import 'package:makefood/pages/myhome.dart';
import 'package:makefood/pages/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FashApp',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}
