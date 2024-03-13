
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({
    super.key,
    required this.size, required this.food,
  });
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width*.04),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.withOpacity(0.4), // Color of the shadow
              spreadRadius: 4, // Spread radius
              blurRadius: 40, // Blur radius
              offset: Offset(
                  0, 3), // Offset in x and y axis from the container
            ),
          ],
        ),
        child: CircleAvatar(
          radius: size.height*0.045,
          foregroundImage: NetworkImage(food.image),
        ),
      ),
    );
  }
}