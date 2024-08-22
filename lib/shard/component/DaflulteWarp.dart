import 'package:flutter/material.dart';

class DeflutWrap extends StatelessWidget {
  const DeflutWrap({
    super.key,
    required this.ListTitle,
  });
  final List<String> ListTitle;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      // crossAxisAlignment: WrapCrossAlignment.center,
      // alignment: WrapAlignment.center,
      //runAlignment: WrapAlignment.center,
      children: List.generate(ListTitle.length, (index) {
        return Chip(
            backgroundColor: Colors.white, label: Text(ListTitle[index]));
      }),
    );
  }
}
