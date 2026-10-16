import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constant/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [RepositoryProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Open Sans',
          textTheme: const TextTheme(
            headlineSmall: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {HomeScreen.id: (context) => HomeScreen()},
        initialRoute: HomeScreen.id,
      ),
    );
  }
}
