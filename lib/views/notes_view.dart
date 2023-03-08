import 'package:flutter/material.dart';

import '../widgets/custom_add_note_bottom_sheet.dart';

import '../widgets/custom_notes_listview.dart';
import '../widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) => const CustomAddNoteBottomSheet(),
              );
            },
            icon: const Icon(Icons.add),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 54),
            CustomAppBar(title: 'Notes', icon: Icons.search),
            Expanded(child: CustomNotesListView()),
          ],
        ),
      ),
    );
  }
}
