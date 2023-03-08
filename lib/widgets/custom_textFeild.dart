import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
