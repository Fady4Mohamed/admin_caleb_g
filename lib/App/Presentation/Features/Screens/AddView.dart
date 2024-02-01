import 'package:admin_caleb_g/App/Data/Manager/add%20cubit/add_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/AddBoody.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/FeaturesAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddView extends StatelessWidget {
  const AddView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FeaturesAppBar(size: size, titel: 'Add'),
              SizedBox(
                height: size.height * .05,
              ),
              AddBoody(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
