
import 'package:admin_caleb_g/App/Presentation/Features/widgets/OrderData.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/OrderImage.dart';
import 'package:flutter/material.dart';

class OrderContainer extends StatelessWidget {
  const OrderContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .8,
      height: size.height * .13,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3), // Color of the shadow
          spreadRadius: 2, // Spread radius
          blurRadius: 20,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          OrderImage(size: size),
          Spacer(),
          OrderData(size: size),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
