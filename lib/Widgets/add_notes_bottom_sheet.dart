import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_bottom.dart';
import 'package:note_app/Widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
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
      ),
    );
  }
}