import 'package:flutter/material.dart';

class NewsCategoryChip extends StatelessWidget {
  final String name;
  final VoidCallback onPress;
  const NewsCategoryChip(
      {super.key, required this.name, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      color: Colors.green,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(name),
    );
  }
}
