import 'package:flutter/material.dart';
import 'package:indeedappui/pages/auth/welcome.dart';
import 'package:indeedappui/utils/colors.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primary, accentColor: AppColors.accent),
      home: Welcome(),
    );
  }
}
