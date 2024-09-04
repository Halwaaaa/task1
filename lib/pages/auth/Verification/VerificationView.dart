import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:task2/main.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    // print(hieght * 0.44);
    //print(hieght);
    Config config = Config();
    return Scaffold(
      backgroundColor:
          isDark ? const Color.fromRGBO(69, 85, 85, 10) : Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: wdith,
            //expandedHeight: ,
            toolbarHeight: hieght * 0.4,
            pinned: true,
            title: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: hieght * 0.08),
                  child: const ImageLeft(),
                ),
                Center(
                  child: Image.asset(
                    'images/verfictionImage.png',
                    height: hieght * 0.4,
                    width: wdith * 0.5,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            backgroundColor:
                isDark ? config.colorAppbarDark2 : config.colorAppbar2,
            shape: RoundedRectangleBorder(
                // color: ,
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(hieght * 0.1),
              bottomRight: Radius.circular(hieght * 0.1),
            )),
          ),
          SliverToBoxAdapter(
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, end: 20),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            config.AvgSpace(context),
                            Center(
                                child: TextVerification(
                              config: config,
                              color: isDark
                                  ? config.colorTextDark
                                  : config.colorSmailText,
                            )),
                            config.AvgSpace(context),
                            Center(
                                child: TextPlaesenter(
                              config: config,
                              isDark: isDark,
                              color: isDark
                                  ? config.colorTextDark
                                  : config.colorSmailText,
                            )),
                            config.smallSpace(),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 500),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(6, (index) {
                                  return Flexible(
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          width: 100,
                                        ),
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                              maxWidth: 50),
                                          child: TextFormField(
                                            maxLength: 1,
                                            textAlign: TextAlign.center,
                                            decoration: InputDecoration(
                                                fillColor: isDark
                                                    ? const Color.fromRGBO(
                                                        69, 85, 85, 10)
                                                    : null,
                                                border:
                                                    const UnderlineInputBorder(
                                                        //borderSide:
                                                        //   BorderSide.none
                                                        ),
                                                focusColor: Colors.amber),
                                            onChanged: (value) {
                                              if (value.length == 1 &&
                                                  index < 6) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              } else if (value.isEmpty &&
                                                  index > 0) {
                                                FocusScope.of(context)
                                                    .previousFocus();
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                          config.smallSpace(),
                          Text(
                            "Verification code consists of numbers and letters ",
                            style: TextStyle(
                              color: isDark
                                  ? Config().colorTextDark
                                  : config.colorSmailText,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          config.smallSpace(),
                          ButtonSubmit(
                              ontap: () {
                                Get.toNamed(
                                  '/LayoutHome',
                                );
                              },
                              wdith: wdith,
                              config: config),
                          config.LargeSpace(context)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSubmit extends StatelessWidget {
  ButtonSubmit({
    super.key,
    required this.wdith,
    required this.config,
    this.ontap,
  });

  final double wdith;
  final Config config;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Center(
        child: Container(
          height: 60,
          width: ResponsvTextSizemix(wdith * 0.6, 200),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(7)),
              color: config.colorBorder),
          child: Center(
            child: Text(
              'Submit ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: config.PrimerColor),
            ),
          ),
        ),
      ),
    );
  }
}

class TextReSend extends StatelessWidget {
  const TextReSend({super.key, required this.config, required this.color});

  final Config config;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Re send code',
      textAlign: TextAlign.start,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: color),
    );
  }
}

class TextPlaesenter extends StatelessWidget {
  const TextPlaesenter(
      {super.key,
      required this.isDark,
      required this.config,
      required this.color});

  final Config config;
  final Color color;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pleas enter verification code sent to Email address .....@Gmail.com Valid to 10 minuts',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
        TextReSend(
          config: config,
          color: isDark
              ? const Color.fromRGBO(160, 142, 164, 1)
              : config.PrimerColor,
        ),
      ],
    );
  }
}

class TextVerification extends StatelessWidget {
  const TextVerification(
      {super.key, required this.config, required this.color});

  final Config config;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Verification Code",
      style: TextStyle(
        fontSize: 32,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
