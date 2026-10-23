import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
import 'package:hive_flutter/adapters.dart';
//import 'package:meta/meta.dart';
import 'package:note_app/constant/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Colors.deepPurple ;

  dynamic addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      await notebox.add(note);
      emit(AddNoteSccusse());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
