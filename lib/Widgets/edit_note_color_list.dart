import 'package:flutter/material.dart';

import 'package:note_app/Widgets/color_item.dart';
import 'package:note_app/constant/constants.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentItem;
  @override
  void initState() {
    currentItem = kColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentItem = index;

                widget.note.color = kColorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                isSelected: currentItem == index,
                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
