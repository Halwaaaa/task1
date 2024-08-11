import 'package:flutter/material.dart';

class Config {
  Color colorApp = const Color.fromRGBO(230, 246, 246, 1);
  Color colorAppbar = const Color.fromRGBO(246, 225, 216, 1);
  Color colorCircelAvater = const Color.fromRGBO(217, 217, 217, 1);
  Color colorSmailText = const Color.fromRGBO(140, 138, 140, 1);
  Color PrimerColor = const Color.fromRGBO(60, 35, 103, 1);
  Color colorAppbar2 = const Color.fromRGBO(230, 246, 246, 1);
  Color colorBoutton = const Color.fromRGBO(243, 233, 245, 1);

  // background: rgba;
  Widget smallSpace() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget AvgSpace(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.05,
    );
  }

  Widget LargeSpace(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
    );
  }
}
