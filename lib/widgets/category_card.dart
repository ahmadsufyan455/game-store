import 'package:flutter/material.dart';

import '../utils/style.dart';

Widget categoryCard(IconData icon, String category) {
  return Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blue.shade200,
          //child: Icon(icon),
        ),
        const SizedBox(height: 8.0),
        Text(category, style: kBodyRegularSmall)
      ],
    ),
  );
}
