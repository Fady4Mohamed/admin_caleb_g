import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class Ordercontainer extends StatelessWidget {
  const Ordercontainer({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .8,
      height: size.height * .15,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3), // Color of the shadow
          spreadRadius: 2, // Spread radius
          blurRadius: 20,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: size.width * .4,
              child: Text(
                '2 said ashta street',
                style: tooBigscreen(context)
                    ? TextStyle(fontSize: 23)
                    : style.style17(size: size),
              )),
          SizedBox(
            width: size.width * .4,
            child: Row(
              children: [
                Spacer(),
                Text('2024-03-12',
                style: tooBigscreen(context)
                    ?const TextStyle(fontSize: 23, color: AppColors.kMainColor)
                    : style
                        .style17(size: size)
                        .copyWith(color: AppColors.kMainColor),),
               Spacer(),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}

bool tooBigscreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1000;
}
