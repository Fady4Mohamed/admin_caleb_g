
import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class OrderData extends StatelessWidget {
  const OrderData({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: size.width * .4,
            child: Text(
              'fish dish hahaha',
              style: style.style17(size: size),
            )),
        SizedBox(
          width: size.width * .4,
          child: Row(
            children: [
              Text(
                r'28612250$',
                style: style
                    .style17(size: size)
                    .copyWith(color: AppColors.kMainColor),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red),
                child: Padding(
                  padding:  EdgeInsets.all(size.width * .015),
                  child: Row(
                    children: [
                      
                      Text('  32  ',style: style.style12(size: size),),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
