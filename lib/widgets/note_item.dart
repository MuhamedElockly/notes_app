import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16),
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
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                "Build your career with Tharwat Samy",
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24, bottom: 16),
            child: Text(
              "May21 , 2024",
              style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
