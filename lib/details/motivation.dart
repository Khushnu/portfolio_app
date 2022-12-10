import 'package:flutter/material.dart';

getMotivation(String title) {
  return Container(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.circle,
          color: Colors.black,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}
