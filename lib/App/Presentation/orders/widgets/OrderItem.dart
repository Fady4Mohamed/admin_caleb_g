
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.size, required this.order,
  });
  final Size size;
  final OrderModel order;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(
                20), // An action can be bigger than the others.
            flex: 10,
            onPressed: (r) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.done,
          ),
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: (r) {},
            foregroundColor: Color(0xffF2F2F2),
            backgroundColor: Color(0xffF2F2F2),
            icon: FontAwesomeIcons.a,
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
           SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: (r) {},
            foregroundColor: Color(0xffF2F2F2),
            backgroundColor: Color(0xffF2F2F2),
            icon: FontAwesomeIcons.a,
          ),
          SlidableAction(
            borderRadius: BorderRadius.circular(
                20), // An action can be bigger than the others.
            flex: 10,
            onPressed: (r) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: '20:31',
          ),
         
        ],
      ) ,
      child: Ordercontainer(size: size,orderModel: order,),
    );
  }
}
