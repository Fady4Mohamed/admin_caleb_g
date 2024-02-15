import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Data/Manager/delet%20cubit/delet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class deletBoody extends StatefulWidget {
  const deletBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<deletBoody> createState() => _deletBoodyState();
}

class _deletBoodyState extends State<deletBoody> {
  Color buttoncolor = AppColors.kMainColor;
  String? name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
           BlocListener<DeletCubit, DeletState>(
              listener: (context, state) async {
                if (state is Deletloding) {
                  buttoncolor = Colors.amber;
                  setState(() {});
                }
                if (state is Deletfailure) {
                  buttoncolor = const Color.fromARGB(255, 95, 10, 4);
                  setState(() {});
                  await Future.delayed(Duration(seconds: 2));
                  buttoncolor = AppColors.kMainColor;
                  setState(() {});
                }
                if (state is Deletsuccess) {
                  buttoncolor = Colors.green;
                  setState(() {});
                  await Future.delayed(Duration(seconds: 2));
                  buttoncolor = AppColors.kMainColor;
                  setState(() {});
                }
              },
              child: CustomeButton(
                size: widget.size,
                onPressed: () async {
                  if (name != null) {
                    BlocProvider.of<DeletCubit>(context).deletFood(name: name!);
                  }
                },
                titel: 'delet',
                color: buttoncolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
