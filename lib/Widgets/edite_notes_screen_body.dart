import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_app_bar.dart';

class EditeNotesScreenBody extends StatelessWidget {
  const EditeNotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          
          CustomAppBar(title: 'Note App', ),
        ],
      ),
    );
  }
}