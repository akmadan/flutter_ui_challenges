import 'package:cardui/utils/colors.dart';
import 'package:flutter/material.dart';

import 'content.dart';

class CardUI extends StatelessWidget {
  const CardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: AppColors.neumorpShadow,
              color: AppColors.bgcolor,
              borderRadius: BorderRadius.circular(20)),
          child: Content(),
        ),
      ),
    );
  }
}
