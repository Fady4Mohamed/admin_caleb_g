
import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Presentation/auth/widgets/logincontanre.dart';
import 'package:flutter/material.dart';


class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height,
                  child: size.width<700?Image.asset('assats/Food,_vegetables_and_fruits_with_FA4A0C_color_background (2).png',fit: BoxFit.fill,):SizedBox(),
          ),
                logincontaner(size:size.width<700? size:Size(700, size.height)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
