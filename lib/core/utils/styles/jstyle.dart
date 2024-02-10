import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JStyles {
  final Color color;
  final double w;

  JStyles({
    required this.color,
    required this.w,
  });

  static TextStyle splashStyle(double w) {
    return GoogleFonts.josefinSans(
      color: const Color(0xFF225B8B),
      fontSize: w * 0.073,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle loginStyle(double w) {
    return GoogleFonts.josefinSans(
      color: const Color(0xFF1E1E1E),
      fontSize: w * 0.058,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style16W600(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.039,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style14W400(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .034,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style18W500(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.043,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style14W500(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.034,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style10W400(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.024,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style10W300(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.024,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle style12W500(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.029,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style12W400(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .029,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style15W600(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.036,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style18W600(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.0439,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style14W600(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .034,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style20W600(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.048,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style16W500(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .039,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style18W700(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .0439,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle style20W500(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.0487,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style16W400(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * 0.039,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style18W400(double w, Color color) {
    return GoogleFonts.josefinSans(
      color: color,
      fontSize: w * .0439,
      fontWeight: FontWeight.w400,
    );
  }
}
