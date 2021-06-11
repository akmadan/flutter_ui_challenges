import 'package:cardui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
          child: Container(
        margin: EdgeInsets.all(15),
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(boxShadow: AppColors.shadows),
        child: Content(),
      )),
    );
  }
}
