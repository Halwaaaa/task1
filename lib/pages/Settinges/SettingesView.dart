import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/pages/MyCart/My_cart.dart';
import 'package:task2/shard/component/AppBarPayments.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/constant/config.dart';
import 'dart:ui' as ui;

import 'package:task2/shard/constant/methed.dart';

class SettingesView extends StatefulWidget {
  const SettingesView({super.key});

  @override
  State<SettingesView> createState() => _SettingesViewState();
}

class _SettingesViewState extends State<SettingesView> {
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
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;

    return Scaffold(
        backgroundColor: config.colorAppbar2,
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(children: [
              Expanded(child: AppBarPa(config: config)),
              Flexible(
                  flex: 4,
                  child: Container(
                    width: wdith,
                    clipBehavior: Clip.hardEdge,
                    padding: const EdgeInsetsDirectional.only(bottom: 100),
                    decoration: BoxDecoration(
                        color: config.colorAppbar2,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(65),
                            bottomLeft: Radius.circular(65))),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.only(top: 0, start: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            flex: 2,
                            child: ItemListSting(),
                          ),
                          // const Spacer(),
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: AlignmentDirectional.centerEnd,
                            children: [
                              CustomPaint(
                                size: Size(wdith * 0.3, hieght * 0.5),
                                painter: image == null
                                    ? null
                                    : ArcPainter(
                                        config,
                                        ResponsvTextSize(wdith * 0.2, 250, 150),
                                        // ResponsvTextSizemix(
                                        //     wdith * 0.5, 125),
                                        image!),
                              ),
                              Positioned(
                                right: -20,
                                top: 0,
                                child: Center(
                                  child: Image.asset(
                                    //    scale: 2,
                                    width: wdith * 0.3,
                                    height: hieght * 0.4,
                                    'images/imageSetting.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.black,
                ),
              ),
            ]),
          ),
        ));
  }
}

class ItemListSting extends StatelessWidget {
  const ItemListSting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        ModulesSettingTitle.length,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    ModulesSettingTitle[index],
                    maxLines: 1,
                    style: const TextStyle(
                        //  fontStyle: FontStyle.normal,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(140, 138, 140, 1)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                index == ModulesSettingTitle.length - 1
                    ? const SizedBox.shrink()
                    : const Flexible(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 20,
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

class ArcPainter extends CustomPainter {
  late Config config;
  late double radius;
  late ui.Image image;
  ArcPainter(this.config, this.radius, this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = config.colorAppbar
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0;

    Path path = Path();
    //path.moveTo(1000, 1000);
    final rect = Rect.fromCircle(
        center: Offset(size.width, size.height / 2), radius: radius);
    Rect.fromPoints(Offset(size.width, 0), Offset(size.width, size.height));
    //Rect.fromCircle(center: Offset(0, size.height / 2), radius: size.width / 2);
    const startAngle = 3.14159 / 2;
    const sweepAngle = 3.14159; // زاوية المسح (180 درجة في الراديان)

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

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
