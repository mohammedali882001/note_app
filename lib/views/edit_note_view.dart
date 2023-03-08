import 'package:flutter/material.dart';

import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_feild.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 54),
            CustomAppBar(
              title: 'Edit',
              icon: Icons.check,
            ),
            SizedBox(height: 32),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxLines: 5)
          ],
        ),
      ),
    );
  }
}
