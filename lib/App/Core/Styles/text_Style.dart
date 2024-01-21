import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class style {
  static TextStyle style60({required Size size}) {
    return TextStyle(
        color:AppColors.kscondColor,
        fontSize: size.width * 0.16,
        );
  }

  static TextStyle style22({required  Size size}) {
    return TextStyle(
        fontSize: size.width * 0.063,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style17({required Size size}) {
    return TextStyle(fontSize: size.width * 0.04);
  }

  static TextStyle style12({required Size size}) {
    return TextStyle(fontSize: size.width * 0.035);
  }

  static TextStyle style8({required Size size}) {
    return TextStyle(fontSize: size.width * 0.03);
  }
}
