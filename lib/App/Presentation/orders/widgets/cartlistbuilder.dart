

import 'package:admin_caleb_g/App/Data/Manager/cubit/cart_cubit.dart';
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
          return Text('loding ...');
        }if(state is Cartfailure){
          print(state.error);
          return Text('error ...');
        }else{
          return SizedBox();
        }
      },
    );
  }
}
