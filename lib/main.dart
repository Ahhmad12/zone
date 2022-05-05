import 'package:flutter/material.dart';
import 'package:zone/screens/login_screen.dart';
import 'package:zone/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:   Future.delayed(Duration(seconds:3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState==ConnectionState.waiting){
          return MaterialApp(
              debugShowCheckedModeBanner: false,

              home: SplashScreen());


        }else{
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.cyan.shade900,
              fontFamily: 'Lato'
            ),
            home: LoginScreen(),
          );
        }
      },
      


    );
  }
}
