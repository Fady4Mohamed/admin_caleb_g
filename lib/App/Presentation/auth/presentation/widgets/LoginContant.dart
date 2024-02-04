
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:flutter/material.dart';


class LoginContant extends StatelessWidget {
  const LoginContant({
    super.key,
    required this.size, this.onTap, this.onchangedemali, this.onchangedpassword,
  });
  final void Function()? onTap;
  final Size size;
  final void Function(String)? onchangedemali;
  final void Function(String)? onchangedpassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.width * .15,
            bottom: size.width * .1,
          ),
          child: Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(.8),
            ),
          ),
        ),
        ncustomtextfield(
          icon: Icons.email_outlined,
          hintText: 'Email...',
          onchanged:onchangedemali,
        ),
        ncustomtextfield(
          icon: Icons.lock_outline,
          hintText: 'Password...',
          onchanged:onchangedpassword ,
        ),
        
      SizedBox(
        height: size.height*0.01,
      ),
        CustomeButton(titel: 'login',onPressed: onTap,size: size,),
        SizedBox(
        height: size.height*0.01,
      ),
      ],
    );
  }
}