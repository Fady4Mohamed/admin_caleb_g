

import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class OrderGuidetext extends StatelessWidget {
  const OrderGuidetext({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Spacer(),
       Image.asset('assats/iwwa_swipe.png',height: size.height*.05,),
       Text('swipe on an order to done or know the time ',style: style.style12(size: size),),
       Spacer()
    
     ],
    );
  }
}