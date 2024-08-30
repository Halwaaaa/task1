import 'package:flutter/material.dart';

class Config {
  Color colorApp = const Color.fromRGBO(230, 246, 246, 1);
  Color colorAppbar = const Color.fromRGBO(246, 225, 216, 1);
  Color colorAppbarDark = const Color.fromRGBO(160, 142, 164, 1);

  Color colorCircelAvater = const Color.fromRGBO(217, 217, 217, 1);
  Color colorSmailText = const Color.fromRGBO(140, 138, 140, 1);
  Color PrimerColor = const Color.fromRGBO(60, 35, 103, 1);

  Color colorAppbar2 = const Color.fromRGBO(230, 246, 246, 1);
  Color colorBorder = const Color.fromRGBO(243, 233, 245, 1);
  Color colorMothersDayOfferBorder = const Color.fromRGBO(255, 227, 214, 1);
  Color colorMothersDayOfferTitle = const Color.fromRGBO(112, 112, 112, 1);
  //(243, 233, 245, 1)

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

  TextStyle TextHomePage() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, color: PrimerColor);
  }

  BoxShadow shadowContiner() {
    return const BoxShadow(
        offset: Offset(0, 4),
        blurRadius: 4,
        spreadRadius: 0,
        color: Color.fromRGBO(0, 0, 0, 0.25));
  }

  BorderRadius borderRadius() {
    return const BorderRadius.only(
      topRight: Radius.circular(6),
      topLeft: Radius.circular(6),
      bottomLeft: Radius.circular(26),
      bottomRight: Radius.circular(6),
    );
  }

  TextStyle TextFlowerFliter() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, color: PrimerColor);
  }

  TextStyle TextFlowerdetailsTitle() {
    return TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: PrimerColor);
  }

  TextStyle TextFlowerdetailsInformation() {
    return const TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
  }

  TextStyle TextMyCartOrder(Color colorText) {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: colorText);
  }

  TextStyle TextInformationOrderTitle() {
    return const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(140, 138, 140, 1));
  }

  TextStyle TextInformationOrderboby() {
    return TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: PrimerColor);
  }

  TextStyle TextTabBarTitle() {
    return TextStyle(
        fontSize: 32, fontWeight: FontWeight.w700, color: PrimerColor);
  }

  TextStyle TextPaymentTitle() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w500, color: PrimerColor);
  }

  TextStyle TextPaymentboby() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, color: colorSmailText);
  }
}
