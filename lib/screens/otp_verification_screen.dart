import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../routes/my_route.dart';
import '../widgets/my_custom_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
          children: [
            Container(
              child: Image.asset("assets/images/mobile_otp.png"),
              width: 250.0,
              height: 250.0,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 32.0),
            const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "OTP Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                  text: 'Enter the OTP sent to ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+91 9879878975',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                //errorAnimationController: errorController, // Pass it here
                onChanged: (value) {
                  setState(() {
                    // currentText = value;
                  });
                },
                appContext: context,
              ),
            ),
            RichText(
              text: const TextSpan(
                  text: 'OTP not received?  ',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'RESEND OTP',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                    )
                  ]),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Material(
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, MyRoute.addressRoute),
                child: const MyCustomButton(
                  buttonColor: Color(0xff171717),
                  buttonWidget: Text(
                    "VERIFY & PROCEED",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
