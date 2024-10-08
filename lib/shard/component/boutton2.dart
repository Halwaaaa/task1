import 'package:flutter/material.dart';

class Boutton2 extends StatelessWidget {
  const Boutton2({
    super.key,
    required this.hieght,
    required this.wdith,
    required this.titil,
  });

  final double hieght;
  final double wdith;
  final String titil;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hieght * 0.08,
      width: wdith * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(60, 35, 103, 1)),
      child: Center(
        child: Text(
          titil,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
