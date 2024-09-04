import 'package:flutter/material.dart';
import 'package:task2/pages/home/layout/layouhomeView.dart';
import 'package:task2/shard/component/TextLogo.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required this.hieght,
    required this.wdith,
    required this.config,
  });

  final double hieght;
  final double wdith;
  final Config config;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/homeFlower.png',
              height: ResponsvTextSize(hieght * 0.15, 125, 40),
              width: ResponsvTextSize(hieght * 0.15, 125, 40),
            ),
            Flexible(
              child: FittedBox(
                child: TextLogo(
                  hieght: hieght,
                  wdith: wdith,
                ),
              ),
            )
          ],
        ),
        // config.smallSpace(),
        ConSearch(
          config: config,
          wdith: wdith,
        ),

        //config.smallSpace(),
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'images/LayoutHome.png',
              height: 40,
              width: 40,
            ),
          ),
        ),
      ],
    );
  }
}
