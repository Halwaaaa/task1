import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/pages/home/Flower/FloewerFliter/FloewerFliterView.dart';
import 'package:task2/pages/home/Flower/Flowerdetails/Flowerdetails.dart';
import 'package:task2/shard/component/ItemGridProdect.dart';
import 'package:task2/shard/constant/config.dart';

class FlowerpageView extends StatelessWidget {
  const FlowerpageView({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();

    return SliverMainAxisGroup(slivers: [
      SliverToBoxAdapter(
        child: Column(
          children: [
            config.smallSpace(),
            Center(
              child: Text(
                "Flowers ",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: config.PrimerColor),
              ),
            ),
            config.smallSpace(),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                spacing: 30,
                children: List.generate(3, (index) {
                  return Chip(label: Text(ModulesFlowerFliter[index]));
                }),
              ),
            ),
            config.smallSpace(),
          ],
        ),
      ),
      const FlowerdetailsView(),
      // SliverPadding(
      //   padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      //   sliver: SliverGrid.builder(
      //       itemCount: 7,
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //           crossAxisCount: 2,
      //           mainAxisSpacing: 20,
      //           crossAxisSpacing: 20,
      //           childAspectRatio: 0.75),
      //       itemBuilder: (context, index) => ItemGridViewPrcdect(
      //             config: config,
      //             index: index,
      //           )),
      // )
    ]);
  }
}
