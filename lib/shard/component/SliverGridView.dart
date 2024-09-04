import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/constant/config.dart';

class SliverGridBestSaler extends StatelessWidget {
  const SliverGridBestSaler({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    return SliverConstrainedCrossAxis(
      maxExtent: 1000,
      sliver: SliverPadding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        sliver: SliverGrid.builder(
          //shrinkWrap: true,

          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.sizeOf(context).width > 400
                  ? 4
                  : MediaQuery.sizeOf(context).width > 300
                      ? 3
                      : 2,
              mainAxisSpacing: 20,
              childAspectRatio: 0.7,
              //  mainAxisExtent: 1000,
              //mainAxisExtent: 20,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) => Align(
            alignment: Alignment.center,
            child: Container(
              // height: double.infinity,
              decoration: ShapeDecoration(
                color: config.colorAppbar2,
                shadows: [
                  config.shadowContiner(),
                ],
                shape: ContinuousRectangleBorder(
                    borderRadius: config.borderRadius()),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: AlignmentDirectional.center,
                        child: Image.asset(bestsellerModules[index].ImageName,
                            fit: BoxFit.cover),
                      ),
                    ),
                    config.smallSpace(),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  bestsellerModules[index].About,
                                  style: TextStyle(
                                    color: config.PrimerColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  "Price:${bestsellerModules[index].Price}\$",
                                  style: TextStyle(
                                    color: config.PrimerColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                            config.smallSpace(),
                            Expanded(
                                child: FittedBox(
                                    child: BouttonAddToCart(config: config))),
                            config.smallSpace(),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class BouttonAddToCart extends StatelessWidget {
  const BouttonAddToCart({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.center,
        child: Container(
          decoration: BoxDecoration(
              color: config.colorAppbar,
              borderRadius: BorderRadius.circular(3)),
          height: 25,
          width: 90,
          child: const Center(
            child: FittedBox(
              child: Text(
                'Add To Cart',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}
