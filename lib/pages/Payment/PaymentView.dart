import 'package:flutter/material.dart';
import 'package:task2/Modules/Modules.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';
import 'package:task2/shard/component/AppBarPayments.dart';
import 'package:task2/shard/component/DafultTextFormFiled.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = Config();
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: SingleChildScrollView(
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: hieght * 0.2,
              child: AppBarPa(config: config),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: List.generate(
                        4,
                        (index) => Column(
                          children: [
                            DafulteTextForm(
                              config: config,
                              title: ModulesTextFormTitleOfPayment[index],
                              // ColorForHindenText: Colors.amber,
                            ),
                            config.smallSpace(),
                          ],
                        ),
                      ),
                    ),
                    DafulteTextForm(
                      config: config,
                      title: 'Adress',
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    DafulteTextForm(
                      config: config,
                      title: 'Special Instructions About Adress',
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            config.smallSpace(),
            Center(
                child: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: Boutton(
                      size: 20,
                      hieght: 50,
                      textColor: config.PrimerColor,
                      fillColor: config.colorAppbar,
                      wdith: wdith * 0.4,
                      titil: 'Use My Location'),
                ),
                config.AvgSpace(context),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Boutton(
                      size: 20,
                      hieght: 50,
                      wdith: wdith * 0.3,
                      titil: 'Continue '),
                ),
                config.AvgSpace(context),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
