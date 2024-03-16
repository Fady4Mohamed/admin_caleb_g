import 'package:admin_caleb_g/App/Data/Manager/cubit/cart_cubit.dart';
import 'package:admin_caleb_g/App/Data/Models/CartModel.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/foodContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    List<FoodModel >food=BlocProvider.of<CartCubit>(context).foodlist;
     List<cartmodel >cart=BlocProvider.of<CartCubit>(context).cartlist;
    return  Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: size.width*.1),
        child: ListView.builder(
              padding: EdgeInsets.only(bottom:20),
              itemCount: food.length,
                itemBuilder: (BuildContext contex, int i) {
         return Center(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child:foodcontainer(size: size,food: food[i],cartitem: cart[i],),
         ));
                },
              ),
      ),
    );
  }
}