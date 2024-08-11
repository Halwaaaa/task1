import 'package:flutter/material.dart';
import 'package:task2/pages/auth/Verification/VerificationView.dart';
import 'package:task2/pages/auth/login/loginView.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
              .copyWith(background: const Color.fromRGBO(230, 246, 246, 1)),
        ),
        home: const VerificationView());
  }
}
