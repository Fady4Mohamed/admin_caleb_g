
import 'package:admin_caleb_g/App/Data/Models/CartModel.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/FoodData.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/FoodImage.dart';
import 'package:flutter/material.dart';

class foodcontainer extends StatelessWidget {
  const foodcontainer({
    super.key,
    required this.size, required this.food, required this.cartitem,
  });
 final FoodModel food;
 final cartmodel cartitem;
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
      child: Row(
        children: [
          FoodImage(size: size,food: food,),
          Spacer(),
          FoodData(size: size,food: food,cartitem:  cartitem,),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
