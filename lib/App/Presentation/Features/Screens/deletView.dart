import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:flutter/material.dart';

class DeletView
 extends StatelessWidget {
  const DeletView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturesAppBar(size: size, titel: 'Delet'),
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
                    ncustomtextfield(icon: Icons.abc, hintText: 'food name '),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    CustomeButton(
                      size: size,
                      onPressed: () {},
                      titel: 'delet',
                      color: AppColors.kMainColor,
                    ),
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
