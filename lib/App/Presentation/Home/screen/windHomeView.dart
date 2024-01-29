import 'package:admin_caleb_g/App/Data/Manager/cubit/chrom_ui_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/AddView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/deletView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/editView.dart';
import 'package:admin_caleb_g/App/Presentation/Features/Screens/ordersView.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WindHomeView extends StatelessWidget {
  const WindHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Size size1 = Size(size.width * 0.4, size.height);
    Size size2 = Size(size.width - size1.width, size.height);
    return Scaffold(
      body: Row(children: [
        Expanded(flex: 1, child: HomeView(size: size1)),
        Expanded(
            flex: 2,
            child: BlocBuilder<ChromUiCubit, ChromUiState>(
              builder: (context, state) {
                if(state is ChromUiOrderview)
                return OrdersView(size: size2);

                if(state is ChromUiAdd)
                return AddView(size: size2);

                if(state is ChromUiDelet)
                return DeletView(size: size2);

                else
                return editView(size: size2);
              },
            ))
      ]),
    );
  }
}
