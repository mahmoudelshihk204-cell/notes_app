import 'package:flutter/material.dart';
import 'package:note_app/screens/edite_notes_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
            color: Colors.blue,
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
                    'First Note',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Text(
                      'Mahmoud youry flutter engineer',
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
                    'Oct09 - 2026',
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
