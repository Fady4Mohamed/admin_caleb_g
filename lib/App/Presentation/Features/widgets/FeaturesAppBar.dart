

import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class FeaturesAppBar extends StatelessWidget {
  const FeaturesAppBar({
    super.key,
    required this.size, required this.titel,
  });
  final String titel; 
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(
       top: size.height * 0.04,
       right: size.width * 0.03,
       left: size.width * 0.03,
     ),
          child: Row(
            children: [
     
     IconButton(
     onPressed: () {
       Navigator.pop(context);
     },
     icon:const Icon(
       Icons.chevron_left,
       size: 40,
     )),
     const Spacer(flex: 3),
     Text(titel,style: style.style22(context: context),),
     const Spacer(flex: 4),
            ],
          ),
        );
  }
}