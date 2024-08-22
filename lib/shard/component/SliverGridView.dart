import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/constant/config.dart';

class SliverGridBestSaler extends StatelessWidget {
  const SliverGridBestSaler({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      sliver: SliverGrid.builder(
        //shrinkWrap: true,

        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
            //mainAxisExtent: 20,
            crossAxisSpacing: 20),
        itemBuilder: (context, index) => Container(
          height: double.infinity,
          decoration: ShapeDecoration(
            color: config.colorAppbar2,
            shadows: [
              config.shadowContiner(),
            ],
            shape:
                ContinuousRectangleBorder(borderRadius: config.borderRadius()),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Image.asset(bestsellerModules[index].ImageName,
                      width: 90, height: 143, fit: BoxFit.cover),
                ),
                config.smallSpace(),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bestsellerModules[index].About,
                        style: TextStyle(
                          color: config.PrimerColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Price:${bestsellerModules[index].Price}\$",
                        style: TextStyle(
                          color: config.PrimerColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                config.smallSpace(),
                BouttonAddToCart(config: config),
                config.smallSpace(),
              ]),
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
            child: Text(
              'Add To Cart',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
