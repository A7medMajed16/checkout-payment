import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/colors.data.dart';

abstract class Styles {
  static TextStyle textStyle25W700 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle24W700 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 24,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle22W600 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 22,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle20W500 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 20,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle18W500 = TextStyle(
    color: ColorsData.mainTextColor.withOpacity(0.7),
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle18W700 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle16W500 = TextStyle(
    color: ColorsData.mainTextColor.withOpacity(0.7),
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle13W600 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 13,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle13W700 = TextStyle(
    color: ColorsData.mainTextColor,
    fontSize: 13,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle6W500 = TextStyle(
    color: ColorsData.mainTextColor.withOpacity(0.7),
    fontSize: 6,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );
}
