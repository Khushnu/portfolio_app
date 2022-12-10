import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

typeWriteText() {
  return Container(
    alignment: Alignment.center,
    child: SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          fontFamily: 'Bobbers',
        ),
        child: AnimatedTextKit(
          pause: const Duration(seconds: 2),
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText('     Flutter Developer'),
          ],
        ),
      ),
    ),
  );
}

textAnimate() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 27.0, height: 100.0),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Horizon',
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              RotateAnimatedText('CONFIDENT'),
              RotateAnimatedText('OPTIMISTIC'),
              RotateAnimatedText('CREATIVE'),
              RotateAnimatedText('TEAM WORK'),
              RotateAnimatedText('RESOLVING PROBLEMS'),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ],
    ),
  );
}
