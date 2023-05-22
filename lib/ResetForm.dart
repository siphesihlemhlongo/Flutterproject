

import 'package:flutter/material.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({super.key});

  get textFieldColor => null;

  get kPrimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            //hintText: (TextStyle(color: textFieldColor)),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor)
        )

        ) );
  }
}