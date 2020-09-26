import 'package:agro_app/constants.dart';
import 'package:agro_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agro Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: vBackgroundColor,
        primaryColor: vPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: vTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

