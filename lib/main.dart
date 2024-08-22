// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Pages/HomePage.dart'; // Correct import statement

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 247, 247, 253), // Corrected ARGB value
      ),
      routes: {
        "/": (context) => HomePage(), // Ensure HomePage is correctly imported
      },
    );
  }
}