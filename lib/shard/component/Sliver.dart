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
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            config.smallSpace(),
            Center(
              child: Text(
                "Hello User",
                style: config.TextHomePage(isDark),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            WelcomSentence(
              wdith: wdith,
              config: config,
              isDark: isDark,
            ),
            config.smallSpace(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Offers",
              style: config.TextHomePage(isDark),
            ),
            config.smallSpace(),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Spacer(),
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 50, right: 50),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Container(
                        //alignment: AlignmentDirectional.center,
                        clipBehavior: Clip.none,
                        width: wdith,
                        //margin: const EdgeInsets.only(right: 10),
                        decoration: mothersDayOfferDecoration(config),
                        child: Stack(
                          //  alignment: Alignment.topCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              top: -40,
                              left: wdith * 0.2,
                              right: wdith * 0.2,
                              //height: double.infinity,
                              child: mothersDayOfferImage(
                                  hieght: hieght, wdith: wdith),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 120),
                              child: HappyMothersDayText(
                                  config: config, wdith: wdith),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //    const Spacer()

                config.smallSpace(),
                config.smallSpace(),
              ],
            )
          ],
        ),
      ]),
    ));
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
    return Center(
      child: SizedBox(
        width: 170,
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: FittedBox(
                  child: Text(
                    "Happy Mothers Day",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: config.colorMothersDayOfferTitle),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 5),
                  child: Text(
                    "On this special Occasion get 50% discount on the Artificial  Silk Roses  ",
                    style: TextStyle(
                      fontSize: 16,
                      color: config.colorSmailText,
                    ),
                  ),
                ),
              ),
              //  config.smallSpace(),
            ],
          ),
        ),
      ),
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
      "images/mothersDayOfferImage2.png",
      fit: BoxFit.fill,
      height: 220,
      //ResponsvTextSize(hieght * 0.2, 300, 223),
      //width: ResponsvTextSize(wdith * 0.5, 300, 223),
    );
  }
}

class WelcomSentence extends StatelessWidget {
  const WelcomSentence({
    super.key,
    required this.wdith,
    required this.config,
    required this.isDark,
  });

  final double wdith;
  final Config config;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //height: 130,
        margin: EdgeInsets.only(left: wdith * 0.1, right: wdith * 0.1),
        //color: Colors.white,
        decoration: ShapeDecoration(
          shape: ContinuousRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(
                width: 5,
                color: isDark ? config.colorAppbarDark2 : config.colorBorder,
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
      ),
    );
  }
}
