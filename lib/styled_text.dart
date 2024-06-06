import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color:const Color.fromRGBO(129, 231, 135, 1.0),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
