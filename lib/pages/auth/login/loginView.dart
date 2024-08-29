import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/pages/auth/login/logincontroll.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';
import 'package:task2/shard/component/DafultTextFormFiled.dart';
import 'package:task2/shard/component/TextFormFiled.dart';
import 'package:task2/shard/component/TextForme.dart';
import 'package:task2/shard/component/TextLogo.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';
import 'package:task2/shard/constant/numder.dart';
import 'package:task2/shard/constant/url.dart';
import 'dart:ui' as ui;

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  ui.Image? image;
  Future<void> _loadImage() async {
    final ByteData data = await rootBundle.load('images/imageSetting.png');
    final Uint8List bytes = data.buffer.asUint8List();
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    setState(() {
      image = frameInfo.image;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage();
  }

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    Config config = Config();
    GetxController LoginConttroll = Get.put(LoginCon());
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 246, 246, 1),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 0,
                        child: CustomPaint(
                          size: Size(wdith * 0.4, hieght * 0.2),
                          painter: image == null
                              ? null
                              : ArcPainter(
                                  center: Offset(wdith * 0.4, 0),
                                  config: config,
                                  image: image!,
                                  radius: ResponsvTextSizemix(wdith * 0.4, 300),
                                  startAngle: 3.14),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          width: ResponsvTextSizemix(wdith * 0.5, 400),
                          child: imagesLogo(wdith: wdith, hieght: hieght)),
                      Positioned(
                        left: 0,
                        child: FittedBox(
                            child: Padding(
                          padding: EdgeInsetsDirectional.only(
                              top: ResponsvTextSizemix(wdith * 0.1, 100),
                              start: ResponsvTextSizemix(wdith * 0.1, 200)),
                          child: TextLogo(hieght: hieght, wdith: wdith),
                        )),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: hieght * 0.1),
                          child: Column(
                            children: List.generate(
                                ModulesLoginTextFormTiile.length,
                                (index) => Flexible(
                                      child: ItemTextFormFiled(
                                          index: index,
                                          config: config,
                                          wdith: wdith),
                                    )),
                          ),
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.only(start: wdith * 0.1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //config.smallSpace(),
                                Flexible(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    config.smallSpace(),
                                    TextLessCharacters(
                                        hieght: hieght, wdith: wdith),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //  config.smallSpace(),
                                    TextForgtPassword(
                                        hieght: hieght, wdith: wdith),
                                    config.LargeSpace(context),
                                    TextSingin(hieght: hieght, wdith: wdith),
                                    config.smallSpace(),

                                    Boutton(
                                        hieght: 60,
                                        wdith: 170,
                                        titil: 'Login '),
                                    config.smallSpace(),
                                  ],
                                )),
                              ],
                            ),
                          )),
                    ],
                  )),
              Flexible(
                flex: 2,
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: CustomPaint(
                        size: Size(wdith * 0.2, hieght * 0.1),
                        painter: image == null
                            ? null
                            : ArcPainter(
                                center: Offset(0, hieght * 0.1),
                                config: config,
                                image: image!,
                                radius: ResponsvTextSizemix(wdith * 0.3, 150),
                                startAngle: 0.0),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      height: hieght * 0.2,
                      child: Image.asset(
                        "images/login2.png",
                        height: double.infinity,
                        fit: BoxFit.fitHeight,
                        // height: hieght * 0.22,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemTextFormFiled extends StatelessWidget {
  const ItemTextFormFiled({
    super.key,
    required this.config,
    required this.wdith,
    required this.index,
  });

  final Config config;
  final double wdith;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          start: wdith * 0.1, end: wdith * 0.05, top: 30),
      child: DafulteTextForm(
        title: ModulesLoginTextFormTiile[index],
        config: config,
      ),
    );
  }
}

class imagesLogo extends StatelessWidget {
  const imagesLogo({
    super.key,
    required this.wdith,
    required this.hieght,
  });

  final double wdith;
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-wdith * 0.03, -hieght * 0.03),
      filterQuality: FilterQuality.high,
      child: Image.asset(
        "images/logo.png",
        fit: BoxFit.fill,
        alignment: Alignment.center,
      ),
    );
  }
}

class TextSingin extends StatelessWidget {
  const TextSingin({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Text.rich(
        TextSpan(
            text: "Dont have an account? ",
            style: TextStyle(
              fontSize: 15,
              //height: 14,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
              decorationThickness: 3,

              //   decorationStyle: TextDecorationStyle.dotte
            ),
            children: [
              TextSpan(
                text: "Sign up",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(60, 35, 103, 1),
                ),
              ),
            ]),
        // maxLines: 1,
        //  textWidthBasis: TextWidthBasis.longestLine,
      ),
    );
  }
}

class TextForgtPassword extends StatelessWidget {
  const TextForgtPassword({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Text.rich(
        TextSpan(
            text: "Forget password?",
            style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(255, 0, 0, 1),
            ),
            children: []),
      ),
    );
  }
}

class TextLessCharacters extends StatelessWidget {
  const TextLessCharacters({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Text(
        "Should be none less than 8 characters",
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color.fromRGBO(140, 138, 140, 1)),
      ),
    );
  }
}

class logoText extends StatelessWidget {
  const logoText({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextLogo(wdith: wdith, hieght: hieght),
      ],
    );
  }
}

class ArcPainter extends CustomPainter {
  final Config config;
  final double radius;
  final ui.Image image;
  final Offset center;
  final double startAngle;

  ArcPainter(
      {required this.center,
      required this.startAngle,
      required this.config,
      required this.radius,
      required this.image});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = config.colorAppbar
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0;

    Path path = Path();
    //path.moveTo(1000, 1000);
    /// final rect = Rect.fromCircle(center: Offset(size.width, 0), radius: radius);
    final rect = Rect.fromCircle(center: center, radius: radius);
    Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height));
    //Rect.fromCircle(center: Offset(0, size.height / 2), radius: size.width / 2);

    const sweepAngle = -3.14 / 2; // زاوية المسح (180 درجة في الراديان)

    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);

    //path.moveTo(size.width * 0.5, size.height * 0.5);

    Rect destRect = Rect.fromLTWH(0, 0, size.width, size.height);
    // canvas.drawImage(image, Offset(dx, dy), paint);
    // canvas.drawImageRect(
    //     image,
    //     Rect.fromLTWH(0, 0, image.height.toDouble(), image.width.toDouble()),
    //     destRect,
    //     Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
