import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/FoodList.dart';
import 'package:flutter/material.dart';

class cartview extends StatelessWidget {
  const cartview({super.key, required this.size});
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
              FeaturesAppBar(size: size, titel: 'fadycart'),
              FoodList(size: size),
            ],
          ),
        ),
      ),
    );
  }
}