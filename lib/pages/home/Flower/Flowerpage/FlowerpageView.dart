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
    bool isDark = Theme.of(context).brightness == Brightness.dark;

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
            IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //spacing: 30,

                children: List.generate(3, (index) {
                  return Flexible(
                    child: FittedBox(
                        child: Chip(
                            shape: const RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            backgroundColor: isDark
                                ? config.colorAppbarDark2
                                : config.colorAppbar2,
                            label: Text(
                              ModulesFlowerFliter[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: isDark
                                      ? const Color.fromRGBO(143, 143, 143, 1)
                                      : null),
                            ))),
                  );
                }),
              ),
            ),
            config.smallSpace(),
          ],
        ),
      ),
      // const FlowerdetailsView(),
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
