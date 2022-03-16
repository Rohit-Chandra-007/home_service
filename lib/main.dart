import 'package:flutter/material.dart';
import 'package:home_service/routes/my_route.dart';
import 'package:home_service/screens/address_screen.dart';
import 'package:home_service/screens/home_screen.dart';
import 'package:home_service/screens/login_screen.dart';
import 'package:home_service/screens/otp_verification_screen.dart';
import 'package:home_service/screens/signup_screen.dart';
import 'package:home_service/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const MySplashScreen(),
        MyRoute.loginRoute: (context) => const LogInScreen(),
        MyRoute.signUpRoute: (context) => const SignUpScreen(),
        MyRoute.verificationRoute: (context) => const VerificationScreen(),
        MyRoute.addressRoute: (context) => const AddressScreen(),
        MyRoute.homeRoute: (context) => const MyHomePage()
      },
    );
  }
}
