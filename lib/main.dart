import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/ListScreen.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';
import 'screen/homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Famous UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        listScreenRoute : (context) => ListScreen(),
        detailScreenRoute: (context) => ListScreen(),
      },
    );
  }
}