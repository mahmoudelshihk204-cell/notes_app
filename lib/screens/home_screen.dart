import 'package:flutter/material.dart';
import 'package:note_app/Widgets/add_notes_bottom_sheet.dart';
import 'package:note_app/Widgets/notes_screen_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: const Color.fromARGB(255, 120, 157, 157),
        onPressed: () {
          showModalBottomSheet(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20)
            ),
            context: context,
            builder: (context) {
              return AddNotesBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesScreenBody(),
    );
  }
}
