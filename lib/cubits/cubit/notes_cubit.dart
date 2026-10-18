import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  dynamic addNote(NoteModel note) async {
    emit(NotesLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notebox.values.toList();
      
      emit(NotesSccusse(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
