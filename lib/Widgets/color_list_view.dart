import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/color_item.dart';
import 'package:note_app/constant/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentItem = 0;
  
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
                BlocProvider.of<AddNoteCubit>(context).color = kColorsList[index];
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
