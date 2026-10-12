import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.normal,
              decoration: TextDecoration.none,
            ),
          ),
          Spacer(),
          CustomIcon(
            color: const Color.fromARGB(255, 63, 63, 63),
            icon: Icons.search,
          ),
        ],
      ),
    );
  }
}
