import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class FlowerdetailsView extends StatelessWidget {
  const FlowerdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    Config config = Config();
    return SliverPadding(
      padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
      sliver: SliverMainAxisGroup(slivers: [
        SliverToBoxAdapter(
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                      margin:
                          const EdgeInsetsDirectional.only(end: 20, bottom: 20),
                      decoration: ImageDetailsSelectedDecoration(config),
                      child: ImageDetailSelected(config: config)),
                ),
                Text(
                  'Color ',
                  style: config.TextFlowerdetailsTitle(),
                ),
                SizedBox(
                  height: 120,
                  width: wdith,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                    itemCount: 100,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {},
                          child: ItemColorImageSelected(config: config));
                    },
                  ),
                ),
                const Divider(
                  color: Color.fromRGBO(243, 233, 245, 1),
                  thickness: 3,
                ),
                config.smallSpace(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      2,
                      (index) => ItemFlowerSelctedInformation(
                            config: config,
                            index: index,
                          )),
                ),
                BoutonBuy(config: config),
                config.smallSpace(),
                const Divider(
                  color: Color.fromRGBO(243, 233, 245, 1),
                  thickness: 3,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                  child: Text(
                    "Reviews ",
                    style: config.TextFlowerdetailsTitle(),
                  ),
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Color.fromRGBO(243, 233, 245, 1),
                  thickness: 3,
                ),
              ],
            ),
          ),
        ),
        SliverList.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              indent: 10,
              endIndent: 10,
              color: Color.fromRGBO(243, 233, 245, 1),
              thickness: 3,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return ItemReviews(
              config: config,
              index: index,
            );
          },
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: ResponsvTextSize(hieght * 0.23, 200, 150),
            width: ResponsvTextSize(wdith * 0.7, 150, 100),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Divider(
                    thickness: 3, color: Color.fromRGBO(243, 233, 245, 1)),
                config.smallSpace(),
                Expanded(
                    child: Container(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  alignment: AlignmentDirectional.centerStart,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 3),
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  child: const Text(
                    "Add Comment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),

                  //decoration: ,
                )),
                config.smallSpace()
              ],
            ),
          ),
        )
      ]),
    );
  }

  ShapeDecoration ImageDetailsSelectedDecoration(Config config) {
    return ShapeDecoration(
        shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(3)),
            side: BorderSide(width: 3, color: config.PrimerColor)));
  }
}

class ItemReviews extends StatelessWidget {
  const ItemReviews({
    super.key,
    required this.config,
    required this.index,
  });

  final Config config;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          config.smallSpace(),
          Row(
            children: [
              Text(
                ModulesFlowerSelectedReviews[index].UserName,
                style: config.TextFlowerdetailsInformation(),
              ),
              const Spacer(),
              Text(
                ModulesFlowerSelectedReviews[index].Date,
                style: config.TextFlowerdetailsInformation(),
              ),
            ],
          ),
          config.smallSpace(),
          Text(
            ModulesFlowerSelectedReviews[index].Review,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(110, 109, 109, 1)),
          ),
          Row(
            children: [
              const Spacer(),
              Row(
                  children: List.generate(
                      4,
                      (index1) => Icon(
                            Icons.star_border,
                            fill: 0.0,
                            color: ModulesFlowerSelectedStar[index][index1],
                          ))),
            ],
          ),
          config.smallSpace(),
        ],
      ),
    );
  }
}

class BoutonBuy extends StatelessWidget {
  const BoutonBuy({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: FittedBox(
            child: Chip(
                labelStyle: config.TextFlowerdetailsTitle(),
                label: const SizedBox(
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Add To Basket '),
                  ),
                )),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Flexible(
          child: FittedBox(
            child: Chip(
                backgroundColor: config.colorAppbar,
                labelStyle: config.TextFlowerdetailsTitle(),
                label: const Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(width: 100, child: Text('Buy Now ')),
                )),
          ),
        ),
      ],
    );
  }
}

class ItemFlowerSelctedInformation extends StatelessWidget {
  const ItemFlowerSelctedInformation({
    super.key,
    required this.config,
    required this.index,
  });

  final Config config;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ModulesFlowerSelectedInformation[index].Title,
          style: config.TextFlowerdetailsTitle(),
        ),
        config.smallSpace(),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 20),
          child: Text(ModulesFlowerSelectedInformation[index].boby,
              style: config.TextFlowerdetailsInformation()),
        ),
        config.smallSpace(),
        const Divider(
          color: Color.fromRGBO(243, 233, 245, 1),
          thickness: 3,
        ),
        config.smallSpace()
      ],
    );
  }
}

class ItemColorImageSelected extends StatelessWidget {
  const ItemColorImageSelected({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.loose,
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color.fromRGBO(217, 217, 217, 1)),
            ),
            Positioned(
              top: -20,
              height: 75,
              width: 50,
              child: Image.asset(
                'images/homeFlower.png',
                fit: BoxFit.fill,
                // color: Colors.amber,
              ),
            ),
            Positioned(
                top: 60,
                child: Text(
                  'White',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: config.PrimerColor),
                ))
          ],
        ),
      ),
    );
  }
}

class ImageDetailSelected extends StatelessWidget {
  const ImageDetailSelected({
    super.key,
    required this.config,
  });

  final Config config;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'images/FlowerDatitles.png',
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phalaenopsis White Orchid Steam",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: config.PrimerColor),
              ),
              const SizedBox(
                height: 10,
              ),
              // const Text("data"),
              Chip(
                  label: Text(
                'Price: 20\$',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: config.PrimerColor),
              )),
            ],
          ),
        )
      ],
    );
  }
}
