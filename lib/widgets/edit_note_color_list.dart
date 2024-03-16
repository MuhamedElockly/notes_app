import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  EditNoteColorList({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<EditNoteColorList> {
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    selectedIndex = colors.indexOf(Color(widget.noteModel.color));
  }

  List<Color> colors = [
    Color(0xff001524),
    Color(0xff0B3B49),
    Color(0xff15616D),
    Color(0xff8AA79F),
    Color(0xffFF7D00),
    Color(0xffBC5308),
    Color(0xff9A3E0C),
    Color(0xff78290F),
    Color(0xff78290F),
    Color(0xff843C25),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 6),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                widget.noteModel.color = colors[selectedIndex].value;
                setState(() {});
              },
              child: ColorItem(
                isSelected: selectedIndex == index,
                currentColor: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
