
import 'package:admin_caleb_g/App/Presentation/Home/screen/HomeView.dart';
import 'package:admin_caleb_g/App/Presentation/Home/screen/windHomeView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    print(size.width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Color(0xffF2F2F2),
      ),
      home:  chois(size),
    );
  }
}
Widget chois(Size size){
if(size.width<600)
return HomeView(size: size);
 
 return WindHomeView();

}