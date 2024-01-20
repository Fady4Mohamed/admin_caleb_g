import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class style {
  static TextStyle style60({required BuildContext context}) {
    return TextStyle(
        color:AppColors.kscondColor,
        fontSize: MediaQuery.of(context).size.width * 0.2,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style22({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.063,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style17({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045);
  }

  static TextStyle style12({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035);
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03);
  }
}
