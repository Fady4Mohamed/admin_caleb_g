import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderGuidetext.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderListt.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              OrderList(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
