import 'package:admin_caleb_g/App/Data/Manager/UI%20cubit/chrom_ui_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/HomeView.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/windHomeView.dart';
import 'package:admin_caleb_g/App/Presentation/auth/presentation/loginView.dart';
import 'package:admin_caleb_g/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    return BlocProvider(
      create: (context) => ChromUiCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffF2F2F2),
        ),
        home: loginView(),
      ),
    );
  }
}


