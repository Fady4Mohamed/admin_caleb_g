import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Data/Manager/cart%20cubit/cart_cubit.dart';
import 'package:admin_caleb_g/App/Data/Manager/complet%20order%20cubit/complet_order_cubit.dart';
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/cartlistbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cartview extends StatelessWidget {
  const cartview({super.key, required this.size, required this.order});
  final Size size;
  final OrderModel order;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                FeaturesAppBar(size: size, titel: order.cliencart),
                cartlistbuilder(
                  size: size,
                  order: order,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(order.price.toString()),
                SizedBox(
                  height: size.height * 0.01,
                ),
                CustomeButton(
                    size: size, onPressed: ()async {
                     await BlocProvider.of<CompletOrderCubit>(context).completOrder(cartname: order.cliencart, orderid: order.id);
                      BlocProvider.of<CompletOrderCubit>(context).refresh();
                      Navigator.pop(context); 
                    }, titel: 'complet order'),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
