import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/widgets/FeaturesAppBar.dart';
import 'package:flutter/material.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FeaturesAppBar(size: size, titel: 'Add'),
            SizedBox(
              height: size.height * .05,
            ),
            SizedBox(
              height: size.height*.8,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: size.width*.06),
                child: Expanded(
                    child: ListView(
                  children: [
                    ncustomtextfield(icon: Icons.abc, hintText: 'food name '),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    ncustomtextfield(
                        icon: Icons.copyright_outlined, hintText: 'food salary '),
                    SizedBox(
                      height: size.height * .05,
                    ),
                   CustomeButton(size: size, onPressed: (){}, titel: 'choice image',),
                    SizedBox(
                      height: size.height * .1,
                    ),
                   CustomeButton(size: size, onPressed: (){}, titel: 'add',color: AppColors.kMainColor,),
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
