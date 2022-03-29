import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {Key? key, required this.buttonColor, required this.buttonWidget})
      : super(key: key);
  final Color buttonColor;
  final Widget buttonWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ],
          border: Border.all(
            color: buttonColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(40))),
      width: 350,
      height: 60,
      child: Center(
        child: buttonWidget,
      ),
    );
  }
}
