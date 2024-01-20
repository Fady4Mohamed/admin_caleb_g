import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturesAppBar(size: size, titel: 'orders'),
            SizedBox(
              height: size.height * .05,
            ),
            SizedBox(
              height: size.height * .8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * .06),
                child: Expanded(
                    child: ListView(
                  children: [
                  
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
