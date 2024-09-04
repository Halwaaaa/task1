import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:task2/pages/Payment/PaymentView.dart';
import 'package:task2/pages/auth/Verification/VerificationView.dart';
import 'package:task2/pages/auth/login/loginView.dart';
import 'package:task2/pages/auth/sigin/singincontroll.dart';
import 'package:task2/pages/home/layout/layouhomeView.dart';

List<GetPage<dynamic>>? getPage = [
  GetPage(name: '/', page: () => const loginView()),
  GetPage(
      name: '/SingView',
      page: () => const SingView(),
      curve: Curves.ease,
      transitionDuration: const Duration(milliseconds: 30)),
  GetPage(
      name: '/PaymentView',
      page: () => const PaymentView(),
      curve: Curves.ease,
      transitionDuration: const Duration(milliseconds: 30)),
  GetPage(
      name: '/VerificationView',
      page: () => const VerificationView(),
      curve: Curves.ease,
      transitionDuration: const Duration(milliseconds: 30)),
  GetPage(
      name: '/LayoutHome',
      page: () => const LayoutHome(),
      curve: Curves.ease,
      transitionDuration: const Duration(milliseconds: 30)),

  // Add other routes here
];
