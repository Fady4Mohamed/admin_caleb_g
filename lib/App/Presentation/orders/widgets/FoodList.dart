import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/foodContainer.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    List<FoodModel >food=[];
    return  Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: size.width*.1),
        child: ListView.builder(
              padding: EdgeInsets.only(bottom:20),
              itemCount: food.length,
                itemBuilder: (BuildContext contex, int i) {
         return Center(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child:foodcontainer(size: size,food: food[i],),
         ));
                },
              ),
      ),
    );
  }
}