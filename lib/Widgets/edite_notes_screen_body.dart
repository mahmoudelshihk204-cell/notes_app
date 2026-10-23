import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/custom_app_bar.dart';
import 'package:note_app/Widgets/custom_text_field.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class EditeNotesScreenBody extends StatefulWidget {
  const EditeNotesScreenBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNotesScreenBody> createState() => _EditeNotesScreenBodyState();
}

class _EditeNotesScreenBodyState extends State<EditeNotesScreenBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fitchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                onChange: (value) {
                  title = value;
                },
                hint: widget.note.title,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                onChange: (value) {
                  content = value;
                },
                hint: widget.note.content,
                maxLines: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
