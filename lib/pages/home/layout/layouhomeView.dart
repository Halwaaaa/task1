import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:task2/shard/component/TextLogo.dart';
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

    Config config = Config();
    return Scaffold(
        bottomNavigationBar: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          child: BottomNavigationBar(items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "s", tooltip: "ss"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "aa", tooltip: "zzz"),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: "kk", tooltip: "sss"),
          ]),
        ),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              toolbarHeight: ResponsvTextSize(hieght * 0.3, 300, 100),
              // titleSpacing: 150,
              title: Appbar(
                hieght: hieght,
                wdith: wdith,
                config: config,
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(100),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: ConSearch(config: config, wdith: wdith),
                  )),
              expandedHeight: ResponsvTextSize(hieght * 0.42, 350, 250),
              backgroundColor: config.colorAppbar2,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(61))),
            ),
            const SliverToBoxAdapter(),
            SliverAnimatedList(
              key: key1,
              initialItemCount: 10,
              itemBuilder: (context, index, animation) {
                return const Text("hhh");
              },
            )
          ],
        ));
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required this.hieght,
    required this.wdith,
    required this.config,
  });

  final double hieght;
  final double wdith;
  final Config config;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/homeFlower.png',
              height: 125,
              width: 125,
            ),
            TextLogo(
              hieght: hieght,
              wdith: wdith,
            )
          ],
        ),
        //config.smallSpace(),
      ],
    );
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
