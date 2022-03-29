import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../routes/my_route.dart';
import '../widgets/my_custom_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  OtpFieldController otpController = OtpFieldController();
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset("assets/images/mobile_otp.png"),
              width: 250.0,
              height: 250.0,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 32.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "OTP Verification",
                  style: GoogleFonts.raleway(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Enter the OTP sent to ',
                  style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                    fontWeight: FontWeight.w300,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '+91 9879878975',
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context).textTheme.titleMedium,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                right: 26,
              ),
              child: SizedBox(
                height: 50.0,
                child: OTPTextField(
                  textFieldAlignment: MainAxisAlignment.spaceEvenly,
                  controller: otpController,
                  length: 4,
                  fieldWidth: 48,
                  width: 300.0,
                  fieldStyle: FieldStyle.underline,
                  style: GoogleFonts.raleway(
                      fontSize: 30, fontWeight: FontWeight.w600),
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            RichText(
              text: TextSpan(
                  text: 'OTP not received?  ',
                  style: GoogleFonts.inter(
                      textStyle: Theme.of(context).textTheme.labelLarge,
                      color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'RESEND OTP',
                      style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.labelLarge,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    )
                  ]),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Material(
              child: InkWell(
                onTap: () {
                  otpController.clear();
                  Navigator.pushNamed(context, MyRoute.addressRoute);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: MyCustomButton(
                    buttonColor: const Color(0xff171717),
                    buttonWidget: Text(
                      "VERIFY & PROCEED",
                      style: GoogleFonts.inter(
                          textStyle: Theme.of(context).textTheme.titleMedium,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
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
