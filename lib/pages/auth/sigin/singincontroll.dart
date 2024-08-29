import 'package:flutter/material.dart';
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
    var config = Config();

    return Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            //  mainAxisSize: MainAxisSize.max,
            children: [
              Stack(alignment: Alignment.topLeft, children: [
                //const Text("data"),

                ClipPath(
                  clipper: ClipPoint(),
                  child: Container(
                    height: ResponsvTextSize(hieght * 0.3, hieght * 0.3, 150),
                    width: wdith,
                    color: config.colorAppbar,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    left: wdith * 0.4,
                    right: wdith * 0.4,
                    top: ResponsvTextSize(hieght * 0.18, hieght * 0.18, 80),
                  ),
                  child: Center(
                      child: CircleAvatarSin(config: config, width: hieght)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: hieght * 0.08,
                  ),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ImageLeft(),
                      Padding(
                        padding: EdgeInsets.only(
                          left: wdith * 0.3,

                          //  right: wdith * 0.3
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: wdith * 0.3,
                              child: Center(
                                  child: TextSingnUp(
                                      config: config, wdith: wdith)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: hieght * 0.02,
                    left: wdith * 0.45,
                    child: Image.asset(
                      'images/floors.png',
                      height:
                          ResponsvTextSize(hieght * 0.25, hieght * 0.25, 100),
                      width: ResponsvTextSize(wdith * 0.5, wdith * 0.5, 100),
                    ))
              ]),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextAddPro(
                        config: config,
                        wdith: wdith,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: wdith * 0.15,
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Expanded(
                                child: DafulteTextForm(
                                  config: config,
                                  title: "Email",
                                ),
                              ),
                              config.smallSpace(),
                              Expanded(
                                child: DafulteTextForm(
                                  config: config,
                                  title: "Phone Number ",
                                ),
                              ),
                              config.smallSpace(),
                              Expanded(
                                child: DafulteTextForm(
                                  config: config,
                                  title: " User Name",
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: DafulteTextForm(
                                  config: config,
                                  title: "Password",
                                ),
                              ),
                              config.smallSpace(),
                              Expanded(
                                child: DafulteTextForm(
                                  config: config,
                                  title: "Re Paasword",
                                ),
                              ),
                              config.smallSpace(),
                              Expanded(
                                child: DafulteTextForm(
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
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    config.smallSpace(),
                    Boutton(
                      hieght: hieght,
                      wdith: wdith,
                      titil: 'Sign Up',
                    ),
                    config.smallSpace(),
                    Column(
                      children: [
                        const TextLogin(),
                        Divider(
                          indent: wdith * 0.3,
                          endIndent: wdith * 0.3,
                          height: 1,
                          color: config.PrimerColor,
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextLogin extends StatelessWidget {
  const TextLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style:
              TextStyle(fontSize: 12, height: 0, fontWeight: FontWeight.w700),
        ),
        Text(
          " Login ",
          style: TextStyle(
            color: Color.fromRGBO(60, 35, 103, 1),
          ),
        ),
      ],
    );
  }
}

class TextSingnUp extends StatelessWidget {
  const TextSingnUp({super.key, required this.config, required this.wdith});

  final Config config;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Sign Up",
        style: TextStyle(
            fontSize: 32,
            color: config.PrimerColor,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

class TextAddPro extends StatelessWidget {
  const TextAddPro({
    super.key,
    required this.config,
    required this.wdith,
  });

  final Config config;
  final double wdith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: wdith * 0.3, right: wdith * 0.3),
      child: Center(
        child: Text(
          "Add Profile Photo",
          style: TextStyle(fontSize: 15, color: config.colorSmailText),
        ),
      ),
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
    return CircleAvatar(
      radius: ResponsvTextSize(width * 0.15, 50, 32),
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
