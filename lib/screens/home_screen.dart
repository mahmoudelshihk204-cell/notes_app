import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Widgets/add_notes_bottom_sheet.dart';
import 'package:note_app/Widgets/notes_screen_body.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            
            backgroundColor: const Color.fromARGB(255, 120, 157, 157),
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
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
        ),
    );
  }
}
