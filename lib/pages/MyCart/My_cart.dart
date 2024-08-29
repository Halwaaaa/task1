import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';
import 'dart:ui' as ui;

import 'package:task2/shard/constant/methed.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage();
  }

  ui.Image? image;
  Future<void> _loadImage() async {
    final ByteData data = await rootBundle.load('images/MyCart.png');
    final Uint8List bytes = data.buffer.asUint8List();
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    setState(() {
      image = frameInfo.image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(image!.height);
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: SizedBox(
                            width: ResponsvTextSizemix(wdith * 0.4, 400),
                            height: ResponsvTextSizemix(wdith * 0.4, 400),
                            child: CustomPointCricle(
                                wdith: wdith,
                                hieght: hieght,
                                config: config,
                                image: image),
                          ),
                        ),
                        SizedBox(
                          width: wdith * 0.5,
                          height: ResponsvTextSizemix(wdith * 0.4, 400),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                  child: FittedBox(child: ImageLeft())),
                              Flexible(
                                child: FittedBox(
                                  child: Center(
                                    child: Text("My Cart",
                                        maxLines: 1,
                                        style: config.TextTabBarTitle()),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: wdith * 0.3),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              1,
                              (index) => Flexible(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    config.smallSpace(),
                                    ItemCardOrder(wdith: wdith, config: config)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            config.smallSpace(),
                            Container(
                              height: 2,
                              decoration: BoxDecoration(
                                  color: config.PrimerColor,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            itemTextTitle(
                              config: config,
                              text:
                                  "Address: Dummar street A bulding number 25 ",
                            ),
                            config.smallSpace(),
                            itemTextBoby(
                              config: config,
                              text: '"Change Address "',
                            ),
                            config.smallSpace(),
                            itemTextTitle(
                                config: config,
                                text: 'Expected Date:  june/26/2024'),
                            config.smallSpace(),
                            itemTextTitle(
                                config: config, text: 'Expected Time: 2:30 PM'),
                            config.smallSpace(),
                            itemTextBoby(
                              config: config,
                              text: 'Schedule Send Time   ',
                            ),
                            config.smallSpace(),
                            itemTextTitle(
                                config: config, text: 'Delivery: 20\$ '),
                            config.smallSpace(),
                            itemTextTitle(config: config, text: 'Taxes: 15\$ '),
                            config.smallSpace(),
                            Text.rich(TextSpan(
                                text: 'Total Price',
                                style: config.TextInformationOrderboby(),
                                children: [
                                  TextSpan(
                                      text: ' 70\$',
                                      style: config.TextInformationOrderTitle())
                                ])),
                            config.smallSpace(),
                            Center(
                                child: Boutton(
                                    hieght: hieght * 0.1,
                                    wdith: wdith * 0.3,
                                    textColor: config.PrimerColor,
                                    fillColor: config.colorAppbar,
                                    titil: 'Continue')),
                            config.AvgSpace(context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class itemTextBoby extends StatelessWidget {
  const itemTextBoby({
    super.key,
    required this.config,
    required this.text,
  });

  final Config config;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: config.colorAppbar),
      child: Text(
        text,
        style: config.TextInformationOrderboby(),
      ),
    );
  }
}

class itemTextTitle extends StatelessWidget {
  const itemTextTitle({
    super.key,
    required this.config,
    required this.text,
  });

  final Config config;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: config.TextInformationOrderTitle(),
    );
  }
}

class ItemCardOrder extends StatelessWidget {
  const ItemCardOrder({
    super.key,
    required this.wdith,
    required this.config,
  });

  final double wdith;
  final Config config;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
          color: config.colorAppbar,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
                text: 'Order:',
                style: config.TextMyCartOrder(Colors.blue),
                children: [
                  TextSpan(
                      text: ' Paenopsis White Orchid Steam   ',
                      style: config.TextMyCartOrder(Colors.grey))
                ]),
            style: config.TextMyCartOrder(Colors.black),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(2, (index2) {
                return BouttonsOrder(
                  index: index2,
                );
              }))
        ],
      ),
    );
  }
}

class BouttonsOrder extends StatelessWidget {
  const BouttonsOrder({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4),
          borderRadius: BorderRadius.circular(6)),
      height: 40,
      width: 40,
      child: Center(
        child: ModulesBouttonsOrder[index],
      ),
    );
  }
}

class CustomPointCricle extends StatelessWidget {
  const CustomPointCricle({
    super.key,
    required this.wdith,
    required this.hieght,
    required this.config,
    required this.image,
  });

  final double wdith;
  final double hieght;
  final Config config;
  final ui.Image? image;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      //   size: Size(wdith * 0.8, hieght * 0.3),
      painter: image == null ? null : point(image!, config: config),
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          top: ResponsvTextSize(hieght * 0.01, 60, 10),
          end: ResponsvTextSize(wdith * 0.06, 50, 20),
        ),
      ),
    );
  }
}

class ImagesPointes extends CustomPainter {
  final ui.Image image;
  ImagesPointes({required this.image});
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    Rect destRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
        destRect,
        Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class point extends CustomPainter {
  final Config config;
  final ui.Image image;

  point(this.image, {required this.config});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.amber // لون الخط
      ..strokeCap = StrokeCap.round // شكل نهاية الخط
      ..strokeWidth = 5;
    Path path = Path();

    canvas.drawCircle(Offset(size.width, 0), size.width, paint);
    path.moveTo(size.width, size.height);

    Rect destRect = Rect.fromLTWH(size.width * 0.3, size.height * 0.05,
        size.width * 0.6, size.height * 0.6);
    canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
        destRect,
        Paint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
