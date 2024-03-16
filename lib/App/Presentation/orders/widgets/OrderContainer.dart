import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:admin_caleb_g/App/Data/Models/order_model.dart';
import 'package:admin_caleb_g/App/Presentation/orders/cartview.dart';
import 'package:flutter/material.dart';

class Ordercontainer extends StatelessWidget {
  const Ordercontainer(
      {super.key, required this.size, required this.orderModel});
  final Size size;
  final OrderModel orderModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return cartview(
              size: size,
              order: orderModel,
            );
          },
        ));
      },
      child: Container(
        width: size.width * .8,
        height: size.height * .15,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Color of the shadow
            spreadRadius: 2, // Spread radius
            blurRadius: 20,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .02),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.kscondColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .05,
                      vertical: size.height * .025),
                  child: Text('GHS ${orderModel.price}'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: size.width * .4,
                    child: Text(
                      orderModel.adresse,
                      style: tooBigscreen(context)
                          ? TextStyle(fontSize: 23)
                          : style.style17(size: size),
                    )),
                SizedBox(
                  width: size.width * .4,
                  child: Text(
                    orderModel.date,
                    overflow: TextOverflow.ellipsis,
                    style: tooBigscreen(context)
                        ? const TextStyle(
                            fontSize: 23, color: AppColors.kMainColor)
                        : style
                            .style17(size: size)
                            .copyWith(color: AppColors.kMainColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

bool tooBigscreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1000;
}
