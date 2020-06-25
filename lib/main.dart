import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_chicken/pages/welcome_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,    
      statusBarIconBrightness: Brightness.dark,  
      systemNavigationBarColor: Colors.black, //Color(0xffEE6D68),
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Chicken',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(title: 'Welcome'),
    );
  }
}
