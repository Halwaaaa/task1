import 'package:flutter/material.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/constant/config.dart';

class AppBarPa extends StatelessWidget {
  AppBarPa({
    super.key,
    this.title,
    required this.config,
  });

  final Config config;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 30),
            child: FittedBox(child: ImageLeft()),
          ),
        ),
        const Spacer(),
        Flexible(
          flex: 2,
          //fit: FlexFit.loose,
          child: FittedBox(
            child: Text(
              title == null ? 'Payment ' : title!,
              style: config.TextTabBarTitle(),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
