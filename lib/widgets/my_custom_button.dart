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
