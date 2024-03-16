import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isSelected;
  final Color currentColor;

  const ColorItem(
      {super.key, required this.isSelected, required this.currentColor});
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: currentColor,
            ),
          )
        : CircleAvatar(
            radius: 24,
            backgroundColor: currentColor,
          );
  }
}
