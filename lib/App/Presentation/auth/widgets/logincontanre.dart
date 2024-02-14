import 'dart:ui';
import 'package:admin_caleb_g/App/Data/Manager/logincubit/logincubit_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/auth/widgets/LoginListener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class logincontaner extends StatelessWidget {
  const logincontaner({super.key, required this.size});
final Size size;
  @override
  Widget build(BuildContext context) {
   
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => logincubitCubit(),
        ),
        
      ],
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
                  child: SizedBox(
                    width: size.width * .9,
                    child: LoginListener(size: size),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
