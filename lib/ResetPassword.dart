

import 'package:flutter/material.dart';

import 'reset_form.dart';


class ResetPassword extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final titleText;

  const ResetPassword({super.key, this.titleText});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Reset Password', style: titleText,),
          const SizedBox(height: 6,),
          const Text('Please Enter Your EmailAddress',
            style: TextStyle(color: Colors.cyanAccent),),
          const SizedBox(height: 10,),
          const ResetForm(),
          const SizedBox(height: 30,),
          GestureDetector(onTap:() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ResetPassword()));
             },
          child: primaryButton(buildText:'Reset Password'),
          ),

    ]));

  }

  primaryButton({required String buildText}) {}
}


