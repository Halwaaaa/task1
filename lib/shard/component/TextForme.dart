// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:task2/shard/component/TextStyle.dart';
import 'package:task2/shard/constant/methed.dart';
import 'package:task2/shard/constant/numder.dart';

class DafutTextForm2 extends StatelessWidget {
  const DafutTextForm2(
      {super.key,
      this.prficon,
      this.colorform,
      this.maxLength,
      required this.hinitext,
      required this.heightScreen,
      required this.wdithScreen,
      required this.textEditingController,
      required this.validat,
      this.onfilld,
      this.labels,
      this.readOnly,
      this.keyboardType,
      required this.leftPosition,
      required this.topPosition});
  final String hinitext;
  final TextEditingController textEditingController;
  // ignore: non_constant_identifier_names
  final String? Function(String? b) validat;
  final Function(String? j)? onfilld;
  final TextInputType? keyboardType;
  final Color? colorform;
  final Widget? prficon;
  final String? labels;
  final double heightScreen;
  final double wdithScreen;
  final double leftPosition;
  final double topPosition;

  final int? maxLength;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextFormField(
      readOnly: readOnly == null ? false : true,
      onChanged: onfilld,
      controller: textEditingController,
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      //style: const TextStyle(fontSize: 20, decorationColor: Colors.white),
      maxLines: 1,
      maxLength: maxLength,
      validator: validat,
      textAlignVertical: TextAlignVertical.center,

      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
          filled: true,
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          labelText: labels,
          prefixIcon: prficon,
          hintText: hinitext,
          hintStyle: TextStyle(
            color: const Color.fromRGBO(140, 138, 140, 1),
            fontSize: ResponsvTextSize(wdithScreen * 0.04, 20, 10),
            height: heightScreen * 0.02 / wdithScreen * 0.04,
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: Colors.black, width: 1.25)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1.25)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2))),
    ));
  }
}
