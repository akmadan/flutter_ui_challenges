import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modified_text extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const modified_text(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(color: color, fontSize: size),
    );
  }
}

class bolded_text extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const bolded_text(
      {Key? key, required this.text, required this.size, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
          color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
