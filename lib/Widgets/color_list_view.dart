import 'package:flutter/material.dart';
import 'package:note_app/Widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentItem = 0;
  List<Color> color = [
    Color(0xff5C7057),
    Color(0xff89A482),
    Color(0xffACC5A6),
    Color(0xffD1EDD3),
    Color(0xff0D47A1),
    Color(0xff2196F3),
    Color(0xff90CAF9),
    Color(0xffE3F2FD),
    Color(0xffA14646),
    Color(0xffDA6556),
    Color(0xffEB895B),
    Color(0xffFDB773),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentItem = index;
                setState(() {});
              },
              child: ColorItem(isSelected: currentItem == index,
              color: color[index],),
            ),
          );
        },
      ),
    );
  }
}
