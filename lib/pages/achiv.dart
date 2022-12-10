import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AchievmentPage extends StatefulWidget {
  const AchievmentPage({Key? key}) : super(key: key);

  @override
  State<AchievmentPage> createState() => _AchievmentPageState();
}

class _AchievmentPageState extends State<AchievmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
                alignment: Alignment.topCenter,
                child: Stack(children: [
                  Container(
                    child: ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.black, Colors.transparent])
                              .createShader(
                                  Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          'images/achiv.jpg',
                          height: 400,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 100),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.55),
                            child: Column(children: [
                              Container(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 250.0,
                                  child: DefaultTextStyle(
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Bobbers',
                                    ),
                                    child: AnimatedTextKit(
                                      pause: const Duration(seconds: 6),
                                      repeatForever: true,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                            '         ACHIEVMENTS'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 1.0,
                                indent: 123.0,
                                endIndent: 90.0,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.trophy,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '    2nd in ASCII at IIUI in Programming.',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.trophy,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '    1st in Express Education Expo at Peshawer in \n   Photography',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.trophy,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '    2nd in National Youth Carnival 18 at Peshawer \n   in E-Gaming',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              SizedBox(
                                height: 30,
                                width: 100,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        primary: Colors.white),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Go Back',
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                            ]),
                          ),
                        ]),
                  ),
                ]))));
  }
}
