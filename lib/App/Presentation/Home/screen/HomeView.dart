import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/Styles/text_Style.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Data/Manager/UI%20cubit/chrom_ui_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/AddView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/deletView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/editView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/ordersView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    print(size.width);
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(
                height: size.height * .03,
              ),
              Text(
                'CALEB G Restaurant',
                style: style.style60(size: size),
              ),
              const Spacer(
                flex: 2,
              ),
              CustomeButton(
                  size: size,
                  onPressed: () {
                    if (issmall(context)){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AddView(size: size,);
                    }));}
                    else{
                      BlocProvider.of<ChromUiCubit>(context).homeUi(1);
                    }
                  },
                  titel: 'add'),
              const Spacer(
                flex: 1,
              ),
              CustomeButton(
                  size: size,
                  onPressed: () {
                    if (issmall(context)){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return editView(size: size,);
                    }));}
                    else{
                      BlocProvider.of<ChromUiCubit>(context).homeUi(2);
                    }
                  },
                  titel: 'edit'),
              const Spacer(
                flex: 1,
              ),
              CustomeButton(
                  size: size,
                  onPressed: () {
                    if (issmall(context)){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DeletView(size: size,);
                    }));}
                    else{
                      BlocProvider.of<ChromUiCubit>(context).homeUi(3);
                    }
                  },
                  titel: 'delet'),
              const Spacer(
                flex: 1,
              ),
              CustomeButton(
                  size: size,
                  onPressed: () {
                    if (issmall(context)){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return OrdersView(
                        size: size,
                      );
                    }));}
                    else{
                      BlocProvider.of<ChromUiCubit>(context).homeUi(4);
                    }
                  },
                  titel: 'view orders'),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

bool issmall(BuildContext context) {
  return (MediaQuery.of(context).size.width < 600);
}
