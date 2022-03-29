import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                child: Center(
                    child: Image.asset(
                  "assets/images/login_screen.png",
                  scale: 1.0,
                )),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Your Home Service Expert",
              style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.titleLarge,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 1.2),
            ),
            const SizedBox(height: 15.0),
            Text(
              "Continue with Phone Number",
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.titleMedium,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: const Color(0xff9C9C9C),
              ),
            ),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
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
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: Material(
                child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, MyRoute.verificationRoute),
                  child: MyCustomButton(
                    buttonColor: const Color(0xff171717),
                    buttonWidget: Text(
                      "SIGN UP",
                      style: GoogleFonts.inter(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "VIEW OTHER OPTION",
              style: GoogleFonts.inter(
                textStyle: Theme.of(context).textTheme.bodySmall,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                color: const Color(0xff5A77FF),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            RichText(
              text: TextSpan(
                  text: 'ALREADY HAVE AN ACCOUNT?',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontFamily: "HelveticaNeue"),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' LOG IN',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                            fontSize: 14.0,
                            fontFamily: "HelveticaNeue"),
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
