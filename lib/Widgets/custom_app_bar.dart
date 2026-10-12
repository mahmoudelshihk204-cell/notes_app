import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          Spacer(),
          CustomIcon(
            color: const Color.fromARGB(255, 63, 63, 63),
            icon: icon,
          ),
        ],
      ),
    );
  }
}
