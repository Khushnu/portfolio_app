import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
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
                          'images/ex.jpg',
                          height: 400,
                          fit: BoxFit.contain,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 2, bottom: 100),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.55),
                                  child: Column(
                                    children: [
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
                                                    '         EXPERIENCE'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        thickness: 1.0,
                                        indent: 120.0,
                                        endIndent: 120.0,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.laptopCode,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '   4 Months at Virtual Relatiy Developer as an\n   Android Developer and Arduino also Completed\n   FYP there.',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.9,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.laptopCode,
                                      color: Colors.white,
                                    ),
                                    Text(
                                        '   3 Months at ilyasoft Developers as a Xamarin Forms\n   Developer with Arduino',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.9,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      FontAwesomeIcons.laptopCode,
                                      color: Colors.white,
                                    ),
                                    Text(
                                        '   5 Months as a Flutter Developer in ANP Media Cell',
                                        style: TextStyle(color: Colors.white)),
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
                              ],
                            ),
                          ),
                        ]),
                  ),
                ]))));
  }
}
