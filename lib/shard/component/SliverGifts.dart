import 'package:flutter/material.dart';
import 'package:task2/shard/constant/config.dart';

class SliverGifts extends StatelessWidget {
  const SliverGifts({super.key, required this.wdith, required this.hight});
  final double wdith;
  final double hight;

  @override
  Widget build(BuildContext context) {
    Config config = Config();

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            config.smallSpace(),
            Text(
              "Customize Special Gifts ",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: config.PrimerColor),
            ),
            config.smallSpace(),
            Container(
              // width: 100,

              decoration: ShapeDecoration(
                  shadows: [config.shadowContiner()],
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color.fromRGBO(158, 146, 137, 1),
                        width: 3,
                      ),
                      borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(29)))),
              child: IntrinsicHeight(
                child: Row(
                    //clipBehavior: Clip.antiAliasWithSaveLayer,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: const BorderRadiusDirectional.only(
                              bottomStart: Radius.circular(25)),
                          child: Image.asset('images/gifts.png',
                              alignment: AlignmentDirectional.topStart,
                              fit: BoxFit.fitWidth // width: wdith * 0.45,
                              ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 20),
                          child: Column(
                            children: [
                              config.AvgSpace(context),
                              Text(
                                'Love Box',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    color: config.colorAppbar),
                              ),
                              config.smallSpace(),
                              Text(
                                'Check Out The Special flower arrangement with a luxurious chocolate box',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: config.colorMothersDayOfferTitle),
                              ),
                              config.AvgSpace(context),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
