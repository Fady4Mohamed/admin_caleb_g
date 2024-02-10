import 'package:admin_caleb_g/App/Core/Styles/App_Colors.dart';
import 'package:admin_caleb_g/App/Core/widgets/customeButton.dart';
import 'package:admin_caleb_g/App/Core/widgets/ncustomtextfield.dart';
import 'package:admin_caleb_g/App/Data/Manager/editcubit/edit_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Features/widgets/ChoiceImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class editviewBoody extends StatefulWidget {
  const editviewBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<editviewBoody> createState() => _editviewBoodyState();
}

class _editviewBoodyState extends State<editviewBoody> {
  Color buttoncolor = AppColors.kMainColor;
  String? name;
  double? salary;
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
            ncustomtextfield(
              icon: Icons.copyright_outlined,
              hintText: 'food salary ',
              onchanged: (p0) {
                salary = double.parse(p0);
              },
            ),
            SizedBox(
              height: widget.size.height * .05,
            ),
            ChoiceImage(size: widget.size),
            SizedBox(
              height: widget.size.height * .1,
            ),
            BlocListener<EditCubit, EditState>(
              listener: (context, state) async {
                if (state is Editloding) {
                  buttoncolor = Colors.amber;
                  setState(() {});
                }
                if (state is Editfailuer) {
                  buttoncolor = const Color.fromARGB(255, 95, 10, 4);
                  setState(() {});
                  await Future.delayed(Duration(seconds: 2));
                  buttoncolor = AppColors.kMainColor;
                  setState(() {});
                }
                if (state is Editsuccess) {
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
                    String? url;
                    if (BlocProvider.of<EditCubit>(context).file != null) {
                      url = await BlocProvider.of<EditCubit>(context)
                          .uploadImage();
                    }

                    BlocProvider.of<EditCubit>(context)
                        .editdata(name: name!, image: url, salary: salary);
                  }
                },
                titel: 'add',
                color: buttoncolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
