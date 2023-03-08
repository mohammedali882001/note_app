import 'package:flutter/material.dart';

import '../constants.dart';
import 'custom_textFeild.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(),
        ],
      ),
    );
  }
}
