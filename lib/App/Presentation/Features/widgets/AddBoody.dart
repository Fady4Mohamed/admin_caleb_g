import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/ChoiceImage.dart';
import 'package:flutter/material.dart';

class AddBoody extends StatelessWidget {
  const AddBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * .8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * .06),
            child: ListView(
              children: [
                ncustomtextfield(icon: Icons.abc, hintText: 'food name '),
                SizedBox(
                  height: size.height * .05,
                ),
                ncustomtextfield(
                    icon: Icons.monetization_on, hintText: 'food salary '),
                SizedBox(
                  height: size.height * .05,
                ),
                ncustomtextfield(
                    icon: Icons.copyright_outlined, hintText: 'category '),
                SizedBox(
                  height: size.height * .05,
                ),
                ChoiceImage(size: size),
                SizedBox(
                  height: size.height * .1,
                ),
                CustomeButton(
                  size: size,
                  onPressed: () {},
                  titel: 'add',
                  color: AppColors.kMainColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}