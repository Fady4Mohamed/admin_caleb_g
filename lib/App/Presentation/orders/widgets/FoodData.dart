import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:flutter/material.dart';

class FoodData extends StatelessWidget {
  const FoodData({
    super.key,
    required this.size, required this.food,
  });
 final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: size.width * .4,
            child: Text(
              food.name,
              style: tooBigscreen(context)
                  ? TextStyle(fontSize: 23)
                  : style.style17(size: size),
            )),
        SizedBox(
          width: size.width * .4,
          child: Row(
            children: [
              Text(
                'GHS${food.price}',
                style: tooBigscreen(context)
                    ? TextStyle(fontSize: 23, color: AppColors.kMainColor)
                    : style
                        .style17(size: size)
                        .copyWith(color: AppColors.kMainColor),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.all(size.width * .015),
                  child: Row(
                    children: [
                      Text(
                        '  32  ',
                        style: tooBigscreen(context)
                            ? TextStyle(fontSize: 23)
                            : style.style12(size: size),
                      ),
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

bool tooBigscreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1000;
}
