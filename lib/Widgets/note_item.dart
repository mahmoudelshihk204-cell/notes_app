import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/edite_notes_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
   final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
         onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditeNotesScreen();
            },
          ),
        );
      },
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  textColor: Colors.black,
                  title: Text(
                    note.title,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      note.content,
                      style: TextStyle(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 85, 84, 84),
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 35),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Text(
                    note.date,
                      style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 85, 84, 84),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
