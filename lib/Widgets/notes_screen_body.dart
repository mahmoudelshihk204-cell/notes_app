import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_app_bar.dart';
import 'package:note_app/Widgets/notes_list.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: const Column(
        children: [
          CustomAppBar(title: 'Note App', icon: Icons.search),
          Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
