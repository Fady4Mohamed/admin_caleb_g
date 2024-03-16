
import 'package:admin_caleb_g/App/Data/Manager/ordder%20cubit/order_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderGuidetext.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/orderbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                FeaturesAppBar(size: size, titel: 'orders'),
                OrderGuidetext(size: size),
                SizedBox(
                  height: size.height * 0.01,
                ),
                orderbuilder(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
