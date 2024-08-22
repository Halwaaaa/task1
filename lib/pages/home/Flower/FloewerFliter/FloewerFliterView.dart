import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/component/DaflulteWarp.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';

class FlowerFliterView extends StatelessWidget {
  const FlowerFliterView({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;

    return SliverToBoxAdapter(
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name ',
                    style: config.TextFlowerFliter(),
                  ),
                  config.smallSpace(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: wdith * 0.3),
                    child: DeflutWrap(
                      ListTitle: ModulesNameFlowerFliter,
                    ),
                  ),
                  config.smallSpace(),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Category Of Flowers ',
                    style: config.TextFlowerFliter(),
                  ),
                  config.smallSpace(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: wdith * 0.2),
                    child: DeflutWrap(
                      ListTitle: ModulesCategoryFlowerFliter,
                    ),
                  ),
                  config.smallSpace(),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Color ",
                    style: config.TextFlowerFliter(),
                  ),
                  config.smallSpace(),
                  Padding(
                      padding: EdgeInsetsDirectional.only(end: wdith * 0.2),
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: List.generate(ModulesColorFlowerFliter.length,
                            (index) {
                          return Chip(
                            backgroundColor: ModulesColorFlowerFliter[index],
                            label: const Text(''),
                          );
                        }),
                      ))
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price  ',
                    style: config.TextFlowerFliter(),
                  ),
                  config.smallSpace(),
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: wdith * 0.2),
                    child: DeflutWrap(
                      ListTitle: ModulesPriceFlowerFliter,
                    ),
                  ),
                  config.smallSpace(),
                ],
              )),
              const Center(
                child: Boutton(
                  hieght: 48,
                  titil: 'Done',
                  wdith: 180,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
