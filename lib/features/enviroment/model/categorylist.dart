import 'package:flutter/material.dart';
import 'package:news_app/core/model/information_model.dart';

class CategoryListTile extends StatelessWidget {
  final InformationModel informationModel;
  const CategoryListTile({
    super.key,
    required this.informationModel,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1688607933876-5ceae237a177?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D",
          ),
        ),
        SizedBox(width: 5),
        Text(
          "Carrot Alinyaa",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
