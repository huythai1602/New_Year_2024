import 'package:flutter/material.dart';
import 'package:new_year_countdown/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'UVF-SlimTony'),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
