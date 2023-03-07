import 'package:flutter/material.dart';

import 'custom_app_bar_icon.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        CustomAppBarIcon(),
      ],
    );
  }
}
