import 'package:cardui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              right: -150,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle),
              )),
          Positioned(
              left: -200,
              bottom: -470,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle),
              )),
          Positioned(
              top: 20,
              left: 15,
              child: Container(
                height: 30,
                child: Image.asset('assets/logo.png'),
              )),
          Positioned(
              top: 58,
              left: 25,
              child: Text(
                "it's where you want to be",
                style: TextStyle(fontStyle: FontStyle.italic),
              )),
          Positioned(
              bottom: 20,
              left: 15,
              child: Text('AKSHIT MADAN',
                  style: GoogleFonts.sourceCodePro(
                      fontSize: 20, color: Colors.grey.shade700))),
          Positioned(
              bottom: 55,
              left: 15,
              child: Column(children: [
                Text('5678 3489 0126 8906',
                    style: GoogleFonts.sourceCodePro(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.grey.shade700))
              ])),
          Positioned(
              top: -8,
              right: 10,
              child:
                  Container(height: 80, child: Image.asset('assets/chip.png'))),
        ],
      ),
    );
  }
}
