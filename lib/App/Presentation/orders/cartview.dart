import 'package:admin_caleb_g/App/Data/Manager/cubit/cart_cubit.dart';
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
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                FeaturesAppBar(size: size, titel: 'fadycart'),
                cartlistbuilder(size: size,order: order,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}