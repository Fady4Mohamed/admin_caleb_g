import 'package:admin_caleb_g/App/Data/Manager/complet%20order%20cubit/complet_order_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/OrderGuidetext.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/orders/widgets/orderbuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key, required this.size});
  final Size size;

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: widget.size.height,
          width: widget.size.width,
          child: Column(
            children: [
              FeaturesAppBar(size: widget.size, titel: 'orders'),
              OrderGuidetext(size: widget.size),
              SizedBox(
                height: widget.size.height * 0.01,
              ),
               BlocListener<CompletOrderCubit, CompletOrderState>(
                listener: (context, state) {
                  if (state is CompletOrdertrue) {
                    setState(() {
                    });
                  }
                },child: orderbuilder(size: widget.size),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
