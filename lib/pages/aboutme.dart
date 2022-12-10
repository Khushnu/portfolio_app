import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../details/animate.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Stack(children: [
            ShaderMask(
              shaderCallback: (rect) {
            return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent])
                .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
            'images/ab.jpg',
            height: 400,
            width: double.maxFinite,
            fit: BoxFit.fill,
              ),
            ),
            Container(
              child: textAnimate(),
            ),
            Container(
              alignment: Alignment.center,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
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
                          fontFamily: 'Bobbers',
                        ),
                        child: AnimatedTextKit(
                          pause: const Duration(seconds: 10),
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText('         Hello i am'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 17.0,
                  ),
                  const Text(
                    'WALEED AHMAD',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  typeWriteText(),
                  const SizedBox(
                    height: 17.0,
                  ),
                  SizedBox(
                    height: 30,
                    width: 120,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white, primary: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          'Hire Me',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white, primary: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Go Back',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () async {
                          const url = 'https://www.facebook.com/heyDictator';
                          if (await canLaunch(url)) launch(url);
                        },
                        icon: const Icon(FontAwesomeIcons.facebook),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () async {
                          const url = 'https://instagram.com/waleeduxafzai';
                          if (await canLaunch(url)) launch(url);
                        },
                        icon: const Icon(FontAwesomeIcons.instagram),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () async {
                          const url = 'https://www.linkden.com/in/waleed-ahmad-02473b17a';
                          if (await canLaunch(url)) launch(url);
                        },
                        icon: const Icon(FontAwesomeIcons.linkedin),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () async {
                          const url = 'https://github.com/Khushnu';
                          if (await canLaunch(url)) launch(url);
                        },
                        icon: const Icon(FontAwesomeIcons.github),
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
