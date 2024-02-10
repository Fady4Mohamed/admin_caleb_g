
import 'package:admin_caleb_g/App/Data/Manager/editcubit/edit_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/editviewBoody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class editView extends StatelessWidget {
  const editView({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FeaturesAppBar(size: size, titel: 'Edit'),
              SizedBox(
                height: size.height * .05,
              ),
              editviewBoody(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
