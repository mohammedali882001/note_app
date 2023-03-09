import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'custom_add_note_form.dart';
import 'custom_button.dart';
import 'custom_text_feild.dart';

class CustomAddNoteBottomSheet extends StatelessWidget {
  const CustomAddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print('error ${state.errMessege}');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddNoteFailure ? true : false,
            child: const SingleChildScrollView(
              child: AddNoteForm(),
            ),
          );
        },
      ),
    );
  }
}
