

import 'package:flutter/material.dart';
import 'package:practiceproject/login.dart';
import 'package:practiceproject/login2.dart';

import 'SignUpForm.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

 get textButton => Login;

  get textDecoration => Login;

  get copyWith => Login;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: kMaterialListPadding,
              child: Text('Create Account'),),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [Text('Already have an Account?')],
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyLogin2()));
              },
            ),
            Text('Login',
              style: textButton.copyWith(
                decoration: TextDecoration.underline, DecorationThickness: 1,


              ),),
            const SizedBox(
              height: 10,),
            const SignUpForm(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: kMaterialListPadding,
              child: Text('Signup'),),


          ],
        ),
      ),
    );
  }


}


