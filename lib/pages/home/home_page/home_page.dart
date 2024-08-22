import 'package:flutter/material.dart';
import 'package:task2/shard/component/Sliver.dart';
import 'package:task2/shard/component/SliverGifts.dart';
import 'package:task2/shard/component/SliverGridView.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;

    return SliverMainAxisGroup(slivers: [
      const SliverWelcomSentence(),
      const SliverGridBestSaler(),
      SliverGifts(
        hight: hieght,
        wdith: wdith,
      )
    ]);
  }
}
