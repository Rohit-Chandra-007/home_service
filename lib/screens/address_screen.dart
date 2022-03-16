import 'package:flutter/material.dart';

import '../widgets/my_custom_button.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const Center(
              child: Text(
                "Hey, nice to meet you!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
              child: Text(
                "See services around ",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Container(
              child: Image.asset("assets/images/undraw_best_place.png"),
              width: 400.0,
              height: 300.0,
              alignment: Alignment.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            MyCustomButton(
              buttonColor: const Color(0xff171717),
              buttonWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.my_location,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Your current location",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
