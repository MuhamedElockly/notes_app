import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_item.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final IconData icon;
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        Spacer(),
        CustomSearchItem(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
