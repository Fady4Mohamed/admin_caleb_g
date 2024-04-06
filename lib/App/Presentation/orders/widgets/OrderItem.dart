
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
            icon: Icons.delete_forever_sharp,
          ),
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: (r) {},
            foregroundColor: Color(0xffF2F2F2),
            backgroundColor: Color(0xffF2F2F2),
            icon:  Icons.drag_indicator_outlined,
          ),
        ],
      ),
      
      child: Ordercontainer(size: size,orderModel: order,),
    );
  }
}
