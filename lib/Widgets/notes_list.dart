import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/note_item.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        if(notes.isEmpty){
          return const Center(
            child: Text('No notes yet'),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: ListView.builder(
             itemCount: notes.length ,
            padding: EdgeInsets.all(0),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
