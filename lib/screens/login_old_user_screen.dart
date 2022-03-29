import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_service/widgets/my_custom_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../routes/my_route.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                ),
                child: Text(
                  "Welcome Back!",
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Material(
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyRoute.verificationRoute),
                child: Padding(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: MyCustomButton(
                    buttonColor: const Color(0xff3f51b5),
                    buttonWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Image.asset(
                              "assets/images/facebook.png",
                            ),
                            flex: 1),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "CONTINUE WITH FACEBOOK",
                            style: GoogleFonts.inter(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: MyCustomButton(
                  buttonColor: Colors.white,
                  buttonWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Image.asset(
                            "assets/images/google_icon.png",
                            scale: 2.0,
                          ),
                          flex: 1),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "CONTINUE WITH GOOGLE",
                          style: GoogleFonts.inter(
                              textStyle: Theme.of(context).textTheme.titleSmall,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 54.0,
            ),
            Text(
              "OR CONTINUE WITH PHONE NUMBER",
              style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  fillColor: Color(0xffF2F3F7),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: MyCustomButton(
                    buttonColor: const Color(0xff171717),
                    buttonWidget: Text(
                      "LOG IN",
                      style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              "Forget Password?",
              style: GoogleFonts.inter(
                  textStyle: Theme.of(context).textTheme.titleSmall,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 32.0,
            ),
            RichText(
              text: TextSpan(
                  text: 'DON’T HAVE AN ACCOUNT?',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontFamily: "HelveticaNeue"),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' SIGN UP',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                            fontSize: 14.0,
                            fontFamily: "HelveticaNeue"),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, MyRoute.loginRoute);
                          })
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
