import 'package:flutter/material.dart';
import 'package:integrate/pages/navpages/main_page.dart';
import 'package:integrate/pages/welcome_page.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// this widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Travel app',
      debugShowCheckedModeBanner:false,
      theme: ThemeData
      (
        primarySwatch: Colors.blue
      ),
      home: MainPage(),
    );
  }
}