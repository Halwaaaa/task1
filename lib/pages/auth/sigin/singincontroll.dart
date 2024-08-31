import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/shard/component/DafultTextFormFiled.dart';
import 'package:task2/shard/component/Images.dart';
import 'package:task2/shard/component/TextFormFiled.dart';
import 'package:task2/shard/component/TextForme.dart';
import 'package:task2/shard/component/boutton.dart';
import 'package:task2/shard/constant/config.dart';
import 'package:task2/shard/constant/methed.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingView extends StatelessWidget {
  const SingView({super.key});

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.sizeOf(context).height;
    var wdith = MediaQuery.sizeOf(context).width;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    var config = Config();

    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            //  mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  Stack(
                      clipBehavior: Clip.hardEdge,
                      alignment: Alignment.topLeft,
                      children: [
                        ClipPath(
                          clipper: ClipPoint(),
                          child: Container(
                            decoration: BoxDecoration(
                                color: config.colorAppbar,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(100))),
                            height: 300,
                            width: wdith,
                            child: Stack(
                              children: [
                                const Positioned(
                                  top: 90,
                                  left: 20,
                                  child: ImageLeft(),
                                ),
                                Positioned(
                                    left: wdith * 0.4,
                                    top: 50,
                                    width: wdith * 0.6,
                                    height: 150,
                                    child: Row(
                                      children: [
                                        Flexible(
                                            child: FittedBox(
                                          child: TextSingnUp(
                                              config: config, wdith: wdith),
                                        )),
                                        Flexible(
                                          child: Transform.translate(
                                            offset: Offset(-wdith * 0.03, 0),
                                            child: Image.asset(
                                              'images/floors.png',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          left: wdith * 0.35,
                          right: wdith * 0.35,
                          height: 100,
                          //width: wdith * 0.2,
                          child: CircleAvatarSin(config: config, width: hieght),
                        ),
                      ]),
                  const Text(
                    "Add Profile Photo",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(140, 138, 140, 1)),
                  )
                ],
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      config.AvgSpace(context),
                      Expanded(
                        child: DafulteTextForm(
                          config: config,
                          title: "Email",
                          isDark: false,
                        ),
                      ),
                      config.smallSpace(),
                      Expanded(
                        child: DafulteTextForm(
                          isDark: false,
                          config: config,
                          title: "Phone Number ",
                        ),
                      ),
                      config.smallSpace(),
                      Expanded(
                        child: DafulteTextForm(
                          isDark: false,
                          config: config,
                          title: " User Name",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: DafulteTextForm(
                          isDark: false,
                          config: config,
                          title: "Password",
                        ),
                      ),
                      config.smallSpace(),
                      Expanded(
                        child: DafulteTextForm(
                          isDark: false,
                          config: config,
                          title: "Re Paasword",
                        ),
                      ),
                      config.smallSpace(),
                      Expanded(
                        child: DafulteTextForm(
                          isDark: false,
                          config: config,
                          title: "Upload PDF ",
                          ColorForHindenText: config.PrimerColor,
                          prfixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "images/pdf.png",
                              height: double.minPositive,
                            ),
                          ),
                        ),
                      ),
                      config.smallSpace(),
                      Center(
                        child: Boutton(
                          ontap: () {
                            print("object");
                            Get.toNamed('/VerificationView');
                          },
                          hieght: 60,
                          wdith: 170,
                          textColor: isDark
                              ? const Color.fromRGBO(243, 233, 245, 1)
                              : null,
                          titil: 'Sign Up',
                        ),
                      ),
                      config.smallSpace(),
                      TextLogin(
                        isdark: isDark,
                        wdith: wdith,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TextLogin extends StatelessWidget {
  const TextLogin({super.key, required this.isdark, required this.wdith});
  final bool isdark;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: AlignmentDirectional.center,
            width: double.infinity,
            child: Text.rich(TextSpan(
                text: " Already have an account?",
                style: TextStyle(
                    color: isdark
                        ? const Color.fromRGBO(243, 233, 245, 1)
                        : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
                children: const [
                  TextSpan(
                    text: " Login ",
                    style: TextStyle(
                      color: Color.fromRGBO(60, 35, 103, 1),
                    ),
                  )
                ])),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            alignment: AlignmentDirectional.center,
            width: double.infinity,
            color: Colors.black,
            height: 1,
          )
        ],
      ),
    );
  }
}

class TextSingnUp extends StatelessWidget {
  const TextSingnUp({super.key, required this.config, required this.wdith});

  final Config config;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign Up",
      maxLines: 1,
      style: TextStyle(
          fontSize: 32, color: config.PrimerColor, fontWeight: FontWeight.w500),
    );
  }
}

class CircleAvatarSin extends StatelessWidget {
  const CircleAvatarSin({
    super.key,
    required this.config,
    required this.width,
  });

  final Config config;
  final double width;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: CircleAvatar(
        //  radius: 50,

        backgroundColor: config.colorCircelAvater,
        // config: null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: FittedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.man_2,
                    size: ResponsvTextSizemix(width * 0.15, 32),
                    color: const Color.fromRGBO(140, 138, 140, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPoint extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    final Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height / 1.5);
    // path.lineTo(size.width * 0.25, size.height / 2);
    // path.quadraticBezierTo(16, (size.height / 2) - 16, 16, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    //Offset midPoint =
    //Offset((size.width) / 2, (size.height / 1.5 + size.height) / 2);
    //  path.quadraticBezierTo(0, size.height / 1.5, , )

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
