import 'package:flutter/material.dart';

class Boutton extends StatelessWidget {
  const Boutton({
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
      height: hieght,
      width: wdith,
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
