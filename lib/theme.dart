import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Color(0xff311D3F);
const secondaryColor = Color(0xffE23E57);
const secondaryBg = Color(0xffB980F0);
const primaryBg = Color(0xffE63E6D);


ThemeData theme() {
  return ThemeData(
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headline1: GoogleFonts.oleoScript(
          color: Colors.white,
          fontSize: 43,
        ),
        bodyText1: GoogleFonts.roboto(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      )
  );
}