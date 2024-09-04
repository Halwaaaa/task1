import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/pages/MyCart/My_cart.dart';
import 'package:task2/pages/Payment/PaymentView.dart';
import 'package:task2/pages/Payment/paymentesview.dart';
import 'package:task2/pages/Settinges/SettingesView.dart';
import 'package:task2/pages/auth/Verification/VerificationView.dart';
import 'package:task2/pages/auth/login/loginView.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';
import 'package:task2/pages/home/layout/layouhomeView.dart';
import 'package:task2/shard/constant/Them.dart';
import 'package:task2/shard/constant/getPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // highContrastTheme: ThemeData.dark(),
      darkTheme: them.customDarkThem,
      theme: them.customlightThem,
      initialRoute: '/LayoutHome',
      getPages: getPage,
      // routingCallback: ,
      themeMode: ThemeMode.dark,
      //home: const loginView()
    );
  }
}
