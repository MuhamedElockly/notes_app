import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Build your career with Tharwat Samy",
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 34,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            "May21 , 2024",
            style: TextStyle(
              color: Colors.black.withOpacity(.4),
            ),
          ),
        ],
      ),
    );
  }
}
