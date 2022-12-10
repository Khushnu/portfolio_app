
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HobbiesPage extends StatefulWidget {
  const HobbiesPage({Key? key}) : super(key: key);

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
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
                          'images/fit.jpg',
                          height: 400,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.48),
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
                                        TyperAnimatedText('         HOBBIES'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                                thickness: 1.0,
                                indent: 120.0,
                                endIndent: 160.0,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.dumbbell,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Fitness',
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
                                    FontAwesomeIcons.code,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Programming',
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
                                    FontAwesomeIcons.fileEdit,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Graphics',
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
                                    FontAwesomeIcons.camera,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Photography',
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
                                    FontAwesomeIcons.hiking,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '   Outing and Camping',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50.0,
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
