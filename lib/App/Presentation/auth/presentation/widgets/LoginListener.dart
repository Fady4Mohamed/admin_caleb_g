import 'package:admin_caleb_g/App/Data/Manager/logincubit/logincubit_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/HomeView.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/windHomeView.dart';
import 'package:admin_caleb_g/App/Presentation/auth/presentation/widgets/LoginContant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginListener extends StatefulWidget {
  const LoginListener({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<LoginListener> createState() => _LoginListenerState();
}

class _LoginListenerState extends State<LoginListener> {
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocListener<logincubitCubit, loginState>(
      listener: (context, state) {
        if (state is logincubitsuccess) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return chois(widget.size);
          }));
        }
        if (state is logincubitfailure) {
          print(state.error.toString());
        }
        if (state is logincubitloding) {
          print('loding');
        }
      },
      child: LoginContant(
        size: widget.size,
        onchangedemali: (value) {
          email = value;
        },
        onchangedpassword: (value) {
          password = value;
        },
        onTap: () {
          if (email != null && password != null) {
            BlocProvider.of<logincubitCubit>(context)
                .login(lemail: email!, lpassword: password!);
          }
        },
      ),
    );
  }
}
Widget chois(Size size) {
  if (size.width < 600) return HomeView(size: size);

  return WindHomeView();
}