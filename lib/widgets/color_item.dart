
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 6),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blue,
      ),
    );
  }
}