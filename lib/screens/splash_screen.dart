import 'package:flutter/material.dart';
import 'package:home_service/screens/login_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfffefefe),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/splash_icon.png", scale: 2.0),
          const Text("Power by Oyelabs"),
        ],
      ),
    );
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LogInScreen(),
      ),
    );
  }
}
