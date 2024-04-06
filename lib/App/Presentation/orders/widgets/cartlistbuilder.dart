

import 'package:admin_caleb_g/App/Data/Manager/cart%20cubit/cart_cubit.dart';
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/FoodList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cartlistbuilder extends StatelessWidget {
  const cartlistbuilder({
    super.key,
    required this.size, required this.order,
  });

  final Size size;
 final OrderModel order;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CartCubit>(context).getallfood(cartname: order.cliencart);
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is Cartsuccsed) {
          return FoodList(size: size,);
        }if(state is Cartloding){
          return  Column(
            children: [
             const Text('loding ...'),
              SizedBox(height: size.height*0.7,)
            ],
          );
        }if(state is Cartfailure){
          print(state.error);
          return  Column(
            children: [
            const  Text('error ...'),
              SizedBox(height: size.height*0.7,)
            ],
          );
        }else{
          return SizedBox();
        }
      },
    );
  }
}
