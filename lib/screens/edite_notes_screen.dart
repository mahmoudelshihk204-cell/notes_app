import 'package:flutter/material.dart';

import 'package:note_app/Widgets/edite_notes_screen_body.dart';
import 'package:note_app/models/note_model.dart';

class EditeNotesScreen extends StatelessWidget {
  const EditeNotesScreen({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditeNotesScreenBody(note: note,);
  }
}
