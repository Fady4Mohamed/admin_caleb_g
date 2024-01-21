import 'package:admin_caleb_g/App/Presentation/Features/Screens/ordersView.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/HomeView.dart';
import 'package:flutter/material.dart';

class WindHomeView extends StatelessWidget {
  const WindHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    Size size1=Size(size.width*0.4, size.height);
    Size size2=Size(size.width-size1.width, size.height);
    return Scaffold(
        body: Row(children: [
          Expanded(
            flex: 1,
            child: HomeView(size: size1)),
          Expanded(
            flex: 2,
            child: OrdersView(size: size2))
        ]),
    );
  }
}