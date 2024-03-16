
import 'package:admin_caleb_g/App/Data/Manager/ordder%20cubit/order_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderListt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class orderbuilder extends StatelessWidget {
  const orderbuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderCubit>(context).getallorders();
    return BlocBuilder<OrderCubit, OrderState>(
      builder: (context, state) {
        if(state is Ordersuccess){
        return OrderList(size: size, order: BlocProvider.of<OrderCubit>(context).allorderlist,);
        }
        if(state is Orderloding){
        return Text('loding ...');
        }else{
          return SizedBox();
        }
      },
    );
  }
}
