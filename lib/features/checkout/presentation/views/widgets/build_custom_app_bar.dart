import 'package:flutter/material.dart';
import 'package:payment_checkout/core/utils/styles.dart';

AppBar buildCustomAppBar({required String title}) {
  return AppBar(
    title: Text(
      title,
      style: Styles.textStyle25W700,
    ),
    centerTitle: true,
  );
}
