import 'package:flutter/material.dart';

class CustomSearchItem extends StatelessWidget {
  final IconData icon;

  const CustomSearchItem({super.key, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Icon(
         icon,
          size: 28,
        ),
      ),
    );
  }
}
