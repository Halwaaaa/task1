import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';
import 'package:task2/shard/component/AppBarPayments.dart';
import 'package:task2/shard/component/DafultTextFormFiled.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';

class Paymentesview2 extends StatelessWidget {
  const Paymentesview2({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.2, child: AppBarPa(config: config)),
              Text(
                'Payment Method',
                style: config.TextPaymentTitle(),
              ),
              config.smallSpace(),
              Flexible(
                child: Wrap(
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  // runAlignment: WrapAlignment.center,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                      4,
                      (index) => itempayMethed(
                            index: index,
                          )),
                ),
              ),
              config.AvgSpace(context),
              Text(
                'Card information ',
                style: config.TextPaymentTitle(),
              ),
              config.smallSpace(),
              Text(
                'Card Holder Full Name ',
                style: config.TextPaymentboby(),
              ),
              config.smallSpace(),
              DafulteTextForm(config: config, title: ''),
              config.smallSpace(),
              Text(
                'Card Number ',
                style: config.TextPaymentboby(),
              ),
              config.smallSpace(),
              DafulteTextForm(config: config, title: ''),
              config.smallSpace(),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Number ',
                            style: config.TextPaymentboby(),
                          ),
                          config.smallSpace(),
                          DafulteTextForm(config: config, title: ''),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Number ',
                            style: config.TextPaymentboby(),
                          ),
                          config.smallSpace(),
                          DafulteTextForm(config: config, title: ''),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              config.smallSpace(),
              Text(
                'Save for Future Purchases ',
                style: config.TextPaymentboby(),
              ),
              config.smallSpace(),
              Row(
                children: [
                  ItemCheckBox(config: config, true),
                  const SizedBox(
                    width: 10,
                  ),
                  ItemCheckBox(false, config: config)
                ],
              ),
              ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Center(
                      child:
                          Boutton(hieght: 50, wdith: 200, titil: 'Continue  ')))
            ],
          ),
        ),
      ),
    ));
  }
}

class ItemCheckBox extends StatelessWidget {
  ItemCheckBox(
    this.value, {
    super.key,
    required this.config,
  });

  final Config config;
  bool value;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        tristate: true,
        checkColor: config.PrimerColor,
        overlayColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
        shape: const CircleBorder(side: BorderSide(color: Colors.white)),
        value: value,
        onChanged: (k) {});
  }
}

class itempayMethed extends StatelessWidget {
  const itempayMethed({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
        //height: 40,
        color: MaterialStateProperty.all(Colors.white),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: const BorderSide(width: 1, color: Colors.black)),
        label: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            ModulesPaymentMethod[index],
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
