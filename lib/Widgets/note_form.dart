
import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_bottom.dart';
import 'package:note_app/Widgets/custom_text_field.dart';

class NoteForm extends StatefulWidget {
  const NoteForm({
    super.key,
  });

  @override
  State<NoteForm> createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomTextField(hint: 'Title',),
          SizedBox(height: 30,),
          CustomTextField(hint: 'Content',maxLines: 5,),
          SizedBox(height: 100,),
          CustomBotton(bottonName: 'Add'),
          SizedBox(height: 30,)
        ],
      ),
    );
  }
}