import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/constant/config.dart';

class FlowerFliterWidget extends StatelessWidget {
  const FlowerFliterWidget({
    super.key,
    required this.config,
    required this.Index,
  });

  final Config config;
  final int Index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      //  width: 100,
      decoration: ShapeDecoration(
          color: config.colorAppbar2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(5)))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          ModulesFlowerFliter[Index],
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(143, 143, 143, 1)),
        ),
      ),
    );
  }
}
