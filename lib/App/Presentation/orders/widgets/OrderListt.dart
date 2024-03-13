
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderItem.dart';
import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
    required this.size,
  });
  
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: size.width*.1),
        child: ListView.builder(
              padding: EdgeInsets.only(bottom:20),
              itemCount: 4,
                itemBuilder: (BuildContext contex, int i) {
         return Center(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child:OrderItem(size: size,),
         ));
                },
              ),
      ),
    );
  }
}
