import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/achiv.dart';
import 'package:portfolio_app/pages/experience.dart';
import 'package:portfolio_app/pages/hobbies.dart';
import 'package:portfolio_app/details/skills.dart';
import 'package:portfolio_app/pages/aboutme.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'eduaction.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../details/animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: SlidingSheet(
              elevation: 8,
              cornerRadius: 30,
              snapSpec: const SnapSpec(
                // Enable snapping. This is true by default.
                snap: true,
                // Set custom snapping points.
                snappings: [0.38, 0.7, 1.0],
                // Define to what the snappings relate to. In this case,
                // the total available space that the sheet can expand to.
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              // The body widget will be displayed under the SlidingSheet
              // and a parallax effect can be applied to it.
              body: Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
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
                      child: CarouselSlider.builder(
                        itemCount: 5,
                        itemBuilder: ((context, index, realIndex) =>
                            Image.asset(
                              'images/img$index.jpg',
                              height: 400,
                              fit: BoxFit.contain,
                            )),
                        options: CarouselOptions(
                          viewportFraction: 0.9,
                          aspectRatio: 1.0,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          height: 500,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 400),
                        ),
                      ),
                    )),
                    Container(
                      child: textAnimate(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.45),
                      child: Column(
                        children: [
                          const Text(
                            'WALEED AHMAD',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          typeWriteText()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              builder: (context, state) {
                // ignore: sized_box_for_whitespace
                return Container(
                    height: 500,
                    child: Container(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        const SizedBox(
                          height: 9.0,
                        ),
                        headings('More About Me', 1.0, 130.0, 130.0),
                        Row(
                          children: [
                            InkWell(
                              onTap: (() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const EducationView()))),
                              child: Container(
                                  margin: const EdgeInsets.all(9.0),
                                  height: 80,
                                  width: 106,
                                  child: Card(
                                    elevation: 20,
                                    color: const Color(0xFF8D6E63),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.graduationCap,
                                            color: Colors.white,
                                            size: 23,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Education',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AchievmentPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(9.0),
                                  height: 80,
                                  width: 122,
                                  child: Card(
                                    elevation: 18,
                                    color: const Color(0xFF8E44AD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.trophy,
                                            color: Colors.white,
                                            size: 23,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Achievmenets',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HobbiesPage())),
                              child: Container(
                                  margin: const EdgeInsets.all(9.0),
                                  height: 80,
                                  width: 100,
                                  child: Card(
                                    elevation: 14,
                                    color: const Color(0xFFD35400),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.book,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            height: 9.0,
                                          ),
                                          Text(
                                            'Hobbies',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AboutMe())),
                              child: skills(
                                  'About Me',
                                  FontAwesomeIcons.info,
                                  Colors.black,
                                  const Color(0xFFFFDE08),
                                  Colors.black),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ExperiencePage())),
                                  child: skills(
                                      'Experience',
                                      FontAwesomeIcons.laptopCode,
                                      Colors.yellow,
                                      const Color(0xFF3A6B35),
                                      Colors.yellow),
                                )
                              ],
                            ),
                          ],
                        ),
                        headings('SKILLS', 1.0, 130.0, 130.0),
                        Row(
                          children: [
                            skills(
                                '  Flutter',
                                FontAwesomeIcons.laptopCode,
                                Colors.white,
                                const Color(0xFFcd84f1),
                                Colors.white),
                            skills(
                                'Photoshop',
                                FontAwesomeIcons.paintbrush,
                                Colors.white,
                                const Color(0xFFff4d4d),
                                Colors.white),
                            skills(
                                'Arduino',
                                FontAwesomeIcons.raspberryPi,
                                Colors.white,
                                const Color(0xFFe1b12c),
                                Colors.white),
                          ],
                        ),
                        Row(
                          children: [
                            skills(
                                ' After Effects',
                                FontAwesomeIcons.video,
                                Colors.white,
                                const Color(0xFF7f8fa6),
                                Colors.white),
                            skills(
                                'Photography',
                                FontAwesomeIcons.camera,
                                Colors.white,
                                const Color(0xFFBB5769),
                                Colors.white),
                          ],
                        )
                      ]),
                    ));
              })),
    );
  }
}

headings(String headings, double Thickness, indent, endint) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Text(
      headings,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Divider(
      thickness: Thickness,
      color: Colors.black,
      indent: indent,
      endIndent: endint,
    )
  ]);
}
