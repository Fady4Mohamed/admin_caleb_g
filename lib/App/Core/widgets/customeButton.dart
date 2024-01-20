


import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';


class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.size,
    required this.onPressed,
    required this.titel, this.color,
  });
  final void Function()? onPressed;
  final String titel;
 final Color? color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
          width: size.width * 0.7,
          height: size.height * .07,
          child: Center(
              child: Text(
             titel,
            style: TextStyle(color:color==null? AppColors.kMainColor:Colors.white,
            fontSize: 18),
            
          ))),
      style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (context) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30));
          }),
          backgroundColor: MaterialStateProperty.all(color?? Colors.white)),
    );
  }
}
