import 'package:flutter/material.dart';

Widget information(String text, IconData iconData) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          IconButton(onPressed: () {}, icon: Icon(iconData)),
        ],
      )
    ],
  );
}
