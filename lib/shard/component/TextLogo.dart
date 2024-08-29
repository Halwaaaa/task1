import 'package:flutter/material.dart';
import 'package:task2/shard/constant/methed.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key, required this.wdith, required this.hieght});
  final double wdith;
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return const Text('logo',
        style: TextStyle(
          //  fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          fontSize: 100,
          // height: hieght * 0.08 / wdith * 0.1,
        ));
  }
}
