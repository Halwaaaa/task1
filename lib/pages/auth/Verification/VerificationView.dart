import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    // print(hieght * 0.44);
    //print(hieght);
    Config config = Config();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                children: [
                  Container(
                    height: ResponsvTextSize(hieght * 0.3, 350, 200),
                    decoration: BoxDecoration(
                        color: config.colorAppbar2,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(hieght * 0.1),
                          bottomRight: Radius.circular(hieght * 0.1),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: hieght * 0.08),
                    child: const ImageLeft(),
                  ),
                  Center(
                    child: Image.asset(
                      'images/verfictionImage.png',
                      height: ResponsvTextSize(hieght * 0.3, 300, 200),
                      width: wdith * 0.5,
                    ),
                  ),
                ],
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        config.AvgSpace(context),
                        Center(child: TextVerification(config: config)),
                        config.AvgSpace(context),
                        TextPlaesenter(config: config),
                        config.smallSpace(),
                        TextReSend(config: config),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    //config.smallSpace(),
                    //config.smallSpace(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 50,
                          child: TextFormField(
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            decoration:
                                const InputDecoration(focusColor: Colors.amber),
                            onChanged: (value) {
                              if (value.length == 1 && index < 3) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.isEmpty && index > 0) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                        );
                      }),
                    ),
                    config.smallSpace(),
                    Text(
                      "Verification code consists of numbers and letters ",
                      style: TextStyle(
                        color: config.colorSmailText,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    config.smallSpace(),
                    ButtonSubmit(wdith: wdith, config: config),
                    config.LargeSpace(context)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSubmit extends StatelessWidget {
  const ButtonSubmit({
    super.key,
    required this.wdith,
    required this.config,
  });

  final double wdith;
  final Config config;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: wdith * 0.6,
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
    );
  }
}

class TextReSend extends StatelessWidget {
  const TextReSend({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Re send code',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: config.PrimerColor,
      ),
    );
  }
}

class TextPlaesenter extends StatelessWidget {
  const TextPlaesenter({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Pleas enter verification code sent to Email address .....@Gmail.com Valid to 10 minuts',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: config.colorSmailText,
      ),
    );
  }
}

class TextVerification extends StatelessWidget {
  const TextVerification({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Verification Code",
      style: TextStyle(
        fontSize: 32,
        color: config.colorSmailText,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
