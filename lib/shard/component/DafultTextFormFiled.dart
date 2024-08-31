import 'package:flutter/material.dart';
import 'package:task2/shard/constant/config.dart';

class DafulteTextForm extends StatelessWidget {
  DafulteTextForm(
      {super.key,
      required this.config,
      required this.isDark,
      required this.title,
      this.ColorForHindenText,
      this.borderRadius,
      this.prfixIcon});

  final Config config;
  final bool isDark;
  Widget? prfixIcon;
  final String title;
  Color? ColorForHindenText;

  BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400, maxHeight: 50),
      child: TextFormField(
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        //focusNode: FocusNode(),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            prefixIcon: prfixIcon,
            // fillColor: Colors.white,
            focusColor: const Color.fromARGB(255, 78, 77, 72),
            filled: true,
            hintText: title,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: ColorForHindenText ??
                    (isDark
                        ? Config().colorTextDark
                        : const Color.fromRGBO(140, 138, 140, 1))),
            border: OutlineInputBorder(
                borderSide: isDark ? const BorderSide() : BorderSide.none,
                borderRadius: borderRadius == null
                    ? const BorderRadius.all(Radius.circular(7))
                    : borderRadius!)),
      ),
    );
  }
}
