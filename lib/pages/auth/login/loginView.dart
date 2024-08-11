import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/pages/auth/login/logincontroll.dart';
import 'package:task2/shard/component/TextFormFiled.dart';
import 'package:task2/shard/component/TextLogo.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/methed.dart';
import 'package:task2/shard/constant/numder.dart';
import 'package:task2/shard/constant/url.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    GetxController LoginConttroll = Get.put(LoginCon());
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 246, 246, 1),
      body: Stack(
        //  alignment: Alignment.topRight,
        children: [
          // Align(
          //   alignment: AlignmentDirectional.topEnd,
          //   child: ClipPath(
          //     //clipper: dd(),
          //     child: Container(
          //       width: 175,
          //       decoration: const BoxDecoration(
          //         color: Colors.black,
          //         //  borderRadius:
          //         //    BorderRadius.only(bottomLeft: Radius.circular(200))),
          //       ),
          //       height: 150,
          //     ),
          //   ),
          // ),
          logoText(hieght: hieght, wdith: wdith),
          TextinputLogin(hieght: hieght, wdith: wdith),
          imagesLogo(wdith: wdith, hieght: hieght),
          TextLessCharacters(hieght: hieght, wdith: wdith),
          TextForgtPassword(hieght: hieght, wdith: wdith),
          TextSingin(hieght: hieght, wdith: wdith),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "images/login2.png",
              height: hieght * 0.22,
            ),
          ),
          Positioned(
              top: hieght * 0.77,
              child: Padding(
                padding:
                    EdgeInsets.only(left: wdith * 0.35, right: wdith * 0.35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Boutton(
                      hieght: hieght,
                      wdith: wdith,
                      titil: 'login',
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class imagesLogo extends StatelessWidget {
  const imagesLogo({
    super.key,
    required this.wdith,
    required this.hieght,
  });

  final double wdith;
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: wdith * 0.5,
      // top: hieght * -0.03,
      child: Container(
        alignment: Alignment.topRight,
        width: wdith * 0.5,
        height: hieght * 0.2,
        child: Transform.rotate(
          angle: 30 * (3.14159 / 180),
          child: Image.asset(
            "images/logo.png",
            //fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

class TextSingin extends StatelessWidget {
  const TextSingin({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: hieght * 0.55,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Dont have an account? ",
            style: TextStyle(
                fontSize: 12, height: 14, fontWeight: FontWeight.w700),
          ),
          Text(
            "Sign up",
            style: TextStyle(
              color: Color.fromRGBO(60, 35, 103, 1),
            ),
          ),
        ],
      ),
    );
  }
}

class TextForgtPassword extends StatelessWidget {
  const TextForgtPassword({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: calculaResponsvHeight(605, hieght),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Forget password?",
            style: TextStyle(
              fontSize: 10,
              color: Color.fromRGBO(255, 0, 0, 1),
            ),
          ),
        ],
      ),
    );
  }
}

class TextLessCharacters extends StatelessWidget {
  const TextLessCharacters({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: hieght * 583 / heightScreenfigma,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Should be none less than 8 characters",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize:
                    ResponsvTextSizemix(wdith * 14 / wdithScreenfigma, 14),
                height: (hieght * 16.14 / heightScreenfigma) /
                    (wdith * 14 / wdithScreenfigma),
                color: const Color.fromRGBO(140, 138, 140, 1)),
          ),
        ],
      ),
    );
  }
}

class TextinputLogin extends StatelessWidget {
  const TextinputLogin({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DafutTextForm(
          topPosition: hieght * 367 / 932,
          leftPosition: wdith * 67 / 430,
          heightScreen: hieght,
          wdithScreen: wdith,
          hinitext: "Email",
          textEditingController: TextEditingController(),
          validat: (String? b) {
            return null;
          },
        ),
        DafutTextForm(
          topPosition: hieght * 443 / 932,
          leftPosition: wdith * 67 / 430,
          heightScreen: hieght,
          wdithScreen: wdith,
          hinitext: " Phone Number",
          textEditingController: TextEditingController(),
          validat: (String? b) {
            return null;
          },
        ),
        DafutTextForm(
          topPosition: hieght * 519 / 932,
          leftPosition: wdith * 67 / 430,
          heightScreen: hieght,
          wdithScreen: wdith,
          hinitext: "Password",
          textEditingController: TextEditingController(),
          validat: (String? b) {
            return null;
          },
        ),
      ],
    );
  }
}

class logoText extends StatelessWidget {
  const logoText({
    super.key,
    required this.hieght,
    required this.wdith,
  });

  final double hieght;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: hieght * 0.2,
        child: Padding(
          padding: EdgeInsets.only(
            left: wdith * 0.2,
            right: wdith * 0.6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextLogo(wdith: wdith, hieght: hieght),
            ],
          ),
        ));
  }
}

class dd extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip

    const double centerX = 696.43; // مركز القوس
    const double centerY = 245.61 + (490.66 / 2); // وسط القوس
    const double radius = 246.73; // نصف القطر

    final Path path = Path();
    print(size.width);

    // بدء القوس
    path.moveTo(0, 0);

    // رسم القوس
    path.arcToPoint(Offset(size.width, size.height),
        radius: const Radius.circular(200), rotation: 10

        // Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)),
        // -197, // تحويل الزاوية إلى راديان
        // -90, // الزاوية التي يغطيها القوس
        // false,
        );

    // path.lineTo(size.width, size.height); // العودة إلى نقطة النهاية

    //  path.close(); // إغلاق المسار

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
