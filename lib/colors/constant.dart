import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

BoxDecoration linear = const BoxDecoration(
    gradient: LinearGradient(colors: [
  Color(0xff62CDFF),
  Color(0xff009FE9),
], begin: Alignment.topCenter, end: Alignment.bottomRight));

Color whiteColor = const Color(0xffFFFFFF);
Color secondaryTextColor = const Color(0xff009FE9);
Color textColor = const Color(0xff000000);

TextStyle whiiteTextStyle = GoogleFonts.poppins(color: whiteColor);
TextStyle hintText = GoogleFonts.poppins(
    textStyle: const TextStyle(
  color: Colors.black,
));
FontWeight bold = FontWeight.bold;
FontWeight semiBold = FontWeight.w700;
