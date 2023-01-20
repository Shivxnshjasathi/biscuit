import 'package:biscuit2/Pages/Auth/intro.dart';
import 'package:biscuit2/Pages/Main_Screens/notification_page.dart';
import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro(),
        theme: ThemeData(brightness: Brightness.dark));
  }
}
