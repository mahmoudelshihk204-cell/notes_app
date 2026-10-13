import 'package:flutter/material.dart';
import 'package:note_app/Widgets/custom_app_bar.dart';
import 'package:note_app/Widgets/custom_text_field.dart';

class EditeNotesScreenBody extends StatelessWidget {
  const EditeNotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: Icons.check, ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(hint: 'Title'),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(hint: 'Content', maxLines: 10,),
            )
          ],
        ),
      ),
    );
  }
}