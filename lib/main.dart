import 'package:flutter/material.dart';
import 'package:flutter_ui_famous_thong/screen/DetailScreen.dart';
import 'package:flutter_ui_famous_thong/screen/ListScreen.dart';
import 'package:flutter_ui_famous_thong/screen/routes.dart';
import 'package:flutter_ui_famous_thong/screen/ui_samples/onboarding_screen.dart';
import 'package:flutter_ui_famous_thong/screen/ui_samples/quick_bee.dart';
import 'package:flutter_ui_famous_thong/screen/webScreen.dart';
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
        detailScreenRoute: (context) => DetailScreen(),
        beeUIScreen: (context) => QuickBeeUIScreen(),
        onboardingScreen: (context) => LoadOnBoardingSample(),
        webScreenRoute: (context) => WebViewScreen(),
      },
    );
  }
}