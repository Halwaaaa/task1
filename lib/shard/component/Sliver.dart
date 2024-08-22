import 'package:flutter/material.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class SliverWelcomSentence extends StatelessWidget {
  const SliverWelcomSentence({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                config.smallSpace(),
                Center(
                  child: Text(
                    "Hello User",
                    style: config.TextHomePage(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                WelcomSentence(wdith: wdith, config: config),
                config.smallSpace(),
              ],
            )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Offers",
                        style: config.TextHomePage(),
                      ),
                      config.smallSpace(),
                      Expanded(
                          child: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                clipBehavior: Clip.none,
                                margin: const EdgeInsets.only(right: 30),
                                decoration: mothersDayOfferDecoration(config),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: -40,
                                      left: wdith * 0.2,
                                      right: wdith * 0.2,
                                      child: mothersDayOfferImage(
                                          hieght: hieght, wdith: wdith),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: ResponsvTextSize(
                                            hieght * 0.1, 200, 125),
                                      ),
                                      child: HappyMothersDayText(
                                          config: config, wdith: wdith),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  ShapeDecoration mothersDayOfferDecoration(Config config) {
    return ShapeDecoration(
        color: const Color.fromRGBO(255, 252, 252, 1),
        shape: ContinuousRectangleBorder(
            side:
                BorderSide(color: config.colorMothersDayOfferBorder, width: 4),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(29),
                bottomRight: Radius.circular(6),
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6))));
  }
}

class HappyMothersDayText extends StatelessWidget {
  const HappyMothersDayText({
    super.key,
    required this.config,
    required this.wdith,
  });

  final Config config;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Happy Mothers Day",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: config.colorMothersDayOfferTitle),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wdith * 0.25),
          child: Center(
            child: Text(
              "On this special Occasion get 50% discount on the Artificial  Silk Roses  ",
              style: TextStyle(
                fontSize: 16,
                color: config.colorSmailText,
              ),
            ),
          ),
        ),
        config.smallSpace(),
      ],
    );
  }
}

class mothersDayOfferImage extends StatelessWidget {
  const mothersDayOfferImage({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/mothersDayOfferImage.png",
      fit: BoxFit.contain,
      height: ResponsvTextSize(hieght * 0.2, 300, 223),
      width: ResponsvTextSize(wdith * 0.5, 300, 223),
    );
  }
}

class WelcomSentence extends StatelessWidget {
  const WelcomSentence({
    super.key,
    required this.wdith,
    required this.config,
  });

  final double wdith;
  final Config config;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 130,
      margin: EdgeInsets.only(left: wdith * 0.1, right: wdith * 0.1),
      //color: Colors.white,
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              width: 5,
              color: config.colorBorder,
            )),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Text(
          "Explore our stunning collection of flowers and vibrant plants to brighten every occasion.",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: config.colorSmailText),
        ),
      ),
    );
  }
}
