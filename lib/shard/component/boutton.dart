import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  Boutton(
      {super.key,
      required this.hieght,
      required this.wdith,
      required this.titil,
      this.size,
      this.fillColor,
      this.textColor});

  final double hieght;
  final double wdith;
  final String titil;
  double? size;
  Color? fillColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hieght,
      width: wdith,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: fillColor ?? const Color.fromRGBO(60, 35, 103, 1)),
      child: Center(
        child: Text(
          titil,
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: size ?? 16,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
