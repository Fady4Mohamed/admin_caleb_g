import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/AddView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: size.height*.03,),
              Text('CALEB G Restaurant',style:style.style60(context: context) ,),
              const Spacer(flex: 2,),
              CustomeButton(size: size, onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return AddView();}));
              }, titel: 'add'),
              const Spacer(flex: 1,),
              CustomeButton(size: size, onPressed: (){}, titel: 'edit'),
              const Spacer(flex: 1,),
              CustomeButton(size: size, onPressed: (){}, titel: 'delet'),
              const Spacer(flex: 1,),
              CustomeButton(size: size, onPressed: (){}, titel: 'view'),
              const Spacer(flex: 3,),
            ],
          ),
        ),
      ),
    );
  }
}
