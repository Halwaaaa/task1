import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';

import 'package:task2/shard/component/SliverGridView.dart';
import 'package:task2/shard/constant/config.dart';

class ItemGridViewPrcdect extends StatelessWidget {
  const ItemGridViewPrcdect({
    super.key,
    required this.config,
    required this.index,
  });

  final Config config;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      //  height: 10000,
      decoration: ShapeDecoration(
          color: config.colorAppbar2,
          shadows: [config.shadowContiner()],
          shape: ContinuousRectangleBorder(
              borderRadius: config.borderRadius(),
              side: const BorderSide(
                  width: 1, color: Color.fromRGBO(21, 19, 24, 1)))),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              child: Image.asset(
                ModulesProductCardImage[index],
                // height: 1000,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              children: [
                const ColorsImages(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Flexible(
                        child: FittedBox(
                          child: Text(
                            ModulesProductCardDetails[index].nameProductCard,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 14,
                                color: config.PrimerColor,
                                fontWeight: FontWeight.w400,
                                overflow: TextOverflow.clip),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // config.smallSpace(),
                      Flexible(
                        child: FittedBox(
                          child: Text(
                            'Price: ${ModulesProductCardDetails[index].priceProductCard}\$',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 14,
                                color: config.PrimerColor,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.clip),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      //  config.smallSpace(),
                      Flexible(
                          child: FittedBox(
                              child: BouttonAddToCart(config: config))),
                      //config.smallSpace()
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorsImages extends StatelessWidget {
  const ColorsImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleColor(
          height: 20,
          wdith: 19,
          colorDecration: Colors.white,
          colorDecrationSide: const Color.fromRGBO(60, 35, 103, 1),
        ),
        const SizedBox(
          width: 5,
        ),
        CircleColor(
          height: 16,
          wdith: 18,
          colorDecration: const Color.fromRGBO(235, 164, 164, 1),
          colorDecrationSide: const Color.fromRGBO(211, 201, 201, 1),
        ),
      ],
    );
  }

  CircleColor(
      {required double height,
      required double wdith,
      required Color colorDecration,
      required Color colorDecrationSide}) {
    return Container(
      width: wdith,
      height: height,
      decoration: ShapeDecoration(
          color: colorDecration,
          shape: CircleBorder(
              side: BorderSide(color: colorDecrationSide, width: 1))),
    );
  }
}
