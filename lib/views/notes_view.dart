import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/custom_notes_item.dart';
import '../widgets/custom_notes_listview.dart';
import '../widgets/custom_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(height: 54),
            CustomViewBody(),
            Expanded(child: CustomNotesListView()),
          ],
        ),
      ),
    );
  }
}
