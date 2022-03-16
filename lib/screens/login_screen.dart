import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_service/routes/my_route.dart';
import 'package:home_service/widgets/my_custom_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets/my_custom_clipper.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: double.infinity,
                height: 400.0,
                decoration: const BoxDecoration(color: Color(0xffB5D9FB)),
                child: Center(child: Image.asset("assets/images/frame.png")),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Your Home Service Expert",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15.0),
            const Text(
              "Continue with Number",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            Material(
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyRoute.verificationRoute),
                child: const MyCustomButton(
                    buttonColor: Color(0xff171717),
                    buttonWidget: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "VIEW OTHER OPTION",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.blueAccent),
            ),
            const SizedBox(
              height: 15.0,
            ),
            RichText(
              text: TextSpan(
                  text: 'ALREADY HAVE AN ACCOUNT?',
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' LOG IN',
                        style: const TextStyle(
                            color: Colors.blueAccent, fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, MyRoute.signUpRoute);
                          })
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
