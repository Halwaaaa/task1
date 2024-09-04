import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:task2/Models/bestseller.dart';
import 'package:task2/Modules/Modules.dart';

import 'package:task2/pages/home/Flower/Flowerpage/FlowerpageView.dart';
import 'package:task2/pages/home/home_page/home_page.dart';
import 'package:task2/shard/component/AppBarLayoutHome.dart';
import 'package:task2/shard/component/TextLogo.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/component/boutton2.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';

class LayoutHome extends StatefulWidget {
  const LayoutHome({super.key});

  @override
  State<LayoutHome> createState() => _LayoutHomeState();
}

class _LayoutHomeState extends State<LayoutHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addItemsWithDelay();
  }

  GlobalKey<SliverAnimatedListState> key1 =
      GlobalKey<SliverAnimatedListState>();

  Future<void> _addItemsWithDelay() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(
          const Duration(milliseconds: 300)); // تأخير 300 مللي ثانية
      //  _items.add('Item $i');

      key1.currentState?.insertItem(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    Config config = Config();
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(39), topRight: Radius.circular(39)),
          child: Container(
            //height: 90,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              //  backgroundBlendMode: BlendMode.color,
              color: config.colorAppbar2,
            ),
            child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.abc_outlined),
                      label: "s",
                      tooltip: "ss"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.abc_outlined),
                      label: "aa",
                      tooltip: "zzz"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.abc_outlined),
                      label: "kk",
                      tooltip: "sss"),
                ]),
          ),
        ),
        backgroundColor: isDark ? config.colorBackgroundDark : Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              toolbarHeight: ResponsvTextSize(hieght * 0.3, 300, 200),
              title: Appbar(
                hieght: hieght,
                wdith: wdith,
                config: config,
              ),
              backgroundColor:
                  isDark ? config.colorAppbarDark2 : config.colorAppbar2,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(61))),
            ),
            const HomePage(),

            //  const FlowerpageView(),

            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),

            const SliverMainAxisGroup(slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              )
            ])

            // SliverAnimatedList(
            //   key: key1,
            //   initialItemCount: 10,
            //   itemBuilder: (context, index, animation) {
            //     return const Text("hhh");
            //   },
            // ),
          ],
        ));
  }
}

class ConSearch extends StatelessWidget {
  const ConSearch({
    super.key,
    required this.config,
    required this.wdith,
  });

  final Config config;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: wdith * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Search",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: config.colorSmailText),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
