import 'package:admin_caleb_g/App/Data/Manager/ordder%20cubit/order_cubit.dart';
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderListt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class orderbuilder extends StatefulWidget {
  const orderbuilder({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<orderbuilder> createState() => _orderbuilderState();
}

class _orderbuilderState extends State<orderbuilder> {
  @override
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('orders').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        if (snapshot.hasData) {
          List<OrderModel> allorderlist = [];
          for (var document in snapshot.data!.docs) {
            allorderlist.add(OrderModel.fromjson(document));
          }
          return OrderList(
            size: widget.size,
            order:allorderlist,
          );
        } else {
          return Text("No data available");
        }
      },
    );
  }
}
