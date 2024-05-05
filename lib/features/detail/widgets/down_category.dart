import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DownNewsCategory extends StatelessWidget {
  final String text;
  final String image;
  final IconData icon;
  const DownNewsCategory({
    super.key,
    required this.text,
    required this.image,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            image,
            // height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          Text(text),
          Icon(icon),
        ],
      ),
    );
  }
}
