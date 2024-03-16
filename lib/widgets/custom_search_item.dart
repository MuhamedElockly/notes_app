import 'package:flutter/material.dart';

class CustomSearchItem extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  const CustomSearchItem({super.key, required this.icon, this.onPressed});

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
        child: IconButton(
          icon: Icon(
            icon,
            size: 28,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
