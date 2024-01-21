
import 'package:flutter/material.dart';

class OrderImage extends StatelessWidget {
  const OrderImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width*.04),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.withOpacity(0.4), // Color of the shadow
              spreadRadius: 4, // Spread radius
              blurRadius: 40, // Blur radius
              offset: Offset(
                  0, 3), // Offset in x and y axis from the container
            ),
          ],
        ),
        child: CircleAvatar(
          radius: size.height*0.045,
          foregroundImage: AssetImage('assats/image 3.png'),
        ),
      ),
    );
  }
}