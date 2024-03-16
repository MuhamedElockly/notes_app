import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int selectedIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                selectedIndex = index;
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
