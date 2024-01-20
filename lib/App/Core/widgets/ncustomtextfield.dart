
import 'package:flutter/material.dart';

class ncustomtextfield extends StatelessWidget {
  const ncustomtextfield({super.key, required this.icon, required this.hintText, this.onchanged});
 final IconData icon ;
 final String hintText ;
 final void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height / 14,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged:onchanged ,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
