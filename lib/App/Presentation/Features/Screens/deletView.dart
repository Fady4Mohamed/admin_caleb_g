import 'package:admin_caleb_g/App/Data/Manager/delet%20cubit/delet_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/deletBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeletView extends StatelessWidget {
  const DeletView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeletCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FeaturesAppBar(size: size, titel: 'Delet'),
              SizedBox(
                height: size.height * .05,
              ),
              deletBoody(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
