import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Data/Manager/add%20cubit/add_cubit.dart';
import 'package:admin_caleb_g/App/Data/Models/FoodModel.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/ChoiceImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBoody extends StatefulWidget {
  const AddBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<AddBoody> createState() => _AddBoodyState();
}

class _AddBoodyState extends State<AddBoody> {
  Color buttoncolor = AppColors.kMainColor;
  String? name;
  String? category;
  double? salary;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.size.height * .8,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * .06),
            child: ListView(
              children: [
                ncustomtextfield(
                  icon: Icons.abc,
                  hintText: 'food name ',
                  onchanged: (p0) {
                    name = p0;
                  },
                ),
                SizedBox(
                  height: widget.size.height * .05,
                ),
                ncustomtextfield(
                  icon: Icons.monetization_on,
                  hintText: 'food salary ',
                  onchanged: (p0) {
                    salary = double.parse(p0);
                  },
                ),
                SizedBox(
                  height: widget.size.height * .05,
                ),
                ncustomtextfield(
                  icon: Icons.copyright_outlined,
                  hintText: 'category ',
                  onchanged: (p0) {
                    category = p0;
                  },
                ),
                SizedBox(
                  height: widget.size.height * .05,
                ),
                ChoiceImage(size: widget.size),
                SizedBox(
                  height: widget.size.height * .1,
                ),
                BlocListener<AddCubit, AddState>(
                  listener: (context, state) async {
                    if (state is AddLoding) {
                      buttoncolor = Colors.amber;
                      setState(() {
                        
                      });
                    }
                    if (state is AddFailure) {
                      buttoncolor = const Color.fromARGB(255, 95, 10, 4);
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                    if (state is AddSuccess) {
                      buttoncolor = Colors.green;
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                  },
                  child: CustomeButton(
                    size: widget.size,
                    onPressed: () async {
                      if (BlocProvider.of<AddCubit>(context).file != null &&
                          category != null &&
                          salary != null &&
                          name != null) {
                        String url = await BlocProvider.of<AddCubit>(context)
                            .uploadImage();
                        FoodModel foodadded = FoodModel(
                            category: category!,
                            image: url,
                            price: salary!,
                            name: name!);
                        BlocProvider.of<AddCubit>(context).addfood(foodadded);
                      }
                    },
                    titel: 'add',
                    color: buttoncolor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
