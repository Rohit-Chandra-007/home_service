import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child:
                    Image.asset("assets/images/splash_icon.png", scale: 2.0)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  "Powered by Oyelabs",
                  style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: const Color(0xff7E8389)),
                ),
                Text(
                  "WITH LOVE ❤ ",
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                    color: const Color(0xff7583CA),
                  ),
                ),
              ],
            ),
          ),
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
