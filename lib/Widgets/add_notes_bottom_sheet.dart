// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Widgets/note_form.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failiar ${state.errMessage}');
            } else if (state is AddNoteSccusse) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const SingleChildScrollView(child: NoteForm()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
