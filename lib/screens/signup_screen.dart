import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
            const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Material(
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, MyRoute.verificationRoute),
                child: MyCustomButton(
                  buttonColor: const Color(0xff3f51b5),
                  buttonWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Image.asset("assets/images/facebook.png"),
                          flex: 1),
                      const Expanded(
                        flex: 3,
                        child: Text(
                          "CONTINUE WITH FACEBOOK",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MyCustomButton(
                buttonColor: Colors.white,
                buttonWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Image.asset("assets/images/google_icon.png"),
                        flex: 1),
                    const Expanded(
                      flex: 3,
                      child: Text(
                        "CONTINUE WITH GOOGLE",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    )
                  ],
                )),
            const SizedBox(
              height: 54.0,
            ),
            const Text(
              "OR CONTINUE WITH PHONE NUMBER",
              style: TextStyle(fontSize: 18),
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
                child: const MyCustomButton(
                  buttonColor: Color(0xff171717),
                  buttonWidget: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Forget Password?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32.0,
            ),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' LOG IN',
                        style: const TextStyle(
                            color: Colors.blueAccent, fontSize: 18),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
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
