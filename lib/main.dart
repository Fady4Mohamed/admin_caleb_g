import 'package:admin_caleb_g/App/Data/Manager/UI%20cubit/chrom_ui_cubit.dart';
import 'package:admin_caleb_g/App/Data/Manager/complet%20order%20cubit/complet_order_cubit.dart';
import 'package:admin_caleb_g/App/Data/Manager/ordder%20cubit/order_cubit.dart';
import 'package:admin_caleb_g/App/Presentation/auth/loginView.dart';
import 'package:admin_caleb_g/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChromUiCubit(),
        ),
        BlocProvider(
          create: (context) => CompletOrderCubit(),
        ),
        BlocProvider(
          create: (context) => OrderCubit(),
        ),
      ],
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
