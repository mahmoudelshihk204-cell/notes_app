import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20),
      child: Row(
        children: [
          Text('Notes App' , style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),),
          Spacer(),
          CustomSearchIcon(
            color: const Color.fromARGB(255, 63, 63, 63),
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
