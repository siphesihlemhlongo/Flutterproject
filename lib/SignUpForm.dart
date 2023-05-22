


import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});


  @override
 State <SignUpForm> createState()=> _SignUpFormState();
}
class _SignUpFormState extends State <SignUpForm> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [buildInputForm('FirstName', false),
        buildInputForm('MiddleName', false),
        buildInputForm('LastName', false),
        buildInputForm('Email', false),
        buildInputForm('Password', true),
        buildInputForm('ConfirmPassword', true)],

    );
  }
}
Padding buildInputForm(String hint, bool pass) {
  dynamic kTextfieldColor;
  return Padding(padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      decoration: InputDecoration(hintText: hint,
        hintStyle: TextStyle(color: kTextfieldColor),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pink),
          //suffixIcon: pass ? IconButton(icon: const Icon(Icons.visibility_off),
             // onPressed: () {}) : null,

        ),


      ),),);
}
