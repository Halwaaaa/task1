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
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              leading: const Text("jjjj"),
              actions: const [Text("sdf")],
              toolbarHeight: ResponsvTextSize(hieght * 0.3, 300, 200),
              // titleSpacing: 150,
              title: Column(
                children: [
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                ],
              ),
              expandedHeight: ResponsvTextSize(hieght * 0.42, 350, 250),
              backgroundColor: config.colorAppbar2,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(61))),
            ),
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
