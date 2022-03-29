import 'package:flutter/material.dart';
import 'package:home_service/routes/my_route.dart';
import 'package:home_service/screens/address_screen.dart';
import 'package:home_service/screens/home_screen.dart';
import 'package:home_service/screens/login_old_user_screen.dart';
import 'package:home_service/screens/login_screen.dart';
import 'package:home_service/screens/otp_verification_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const VerificationScreen(),
        MyRoute.loginRoute: (context) => const LogInScreen(),
        MyRoute.signUpRoute: (context) => const SignUpScreen(),
        MyRoute.verificationRoute: (context) => const VerificationScreen(),
        MyRoute.addressRoute: (context) => const AddressScreen(),
        MyRoute.homeRoute: (context) => const MyHomePage()
      },
    );
  }
}
