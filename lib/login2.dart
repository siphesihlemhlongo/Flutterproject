

import 'package:flutter/material.dart';

import 'ResetPassword.dart';
import 'SignUp.dart';

class MyLogin2 extends StatefulWidget{
  const MyLogin2 ({super.key});

  @override
  State<MyLogin2> createState()=> _MyLogin2State();
}

class _MyLogin2State extends State<MyLogin2>{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  get child => null;
  inputDecoration({required UnderlineInputBorder border, required String labelText}) {}
  @override
 Widget build(BuildContext context){



    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/zororo.png',scale: 3.0,),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children:[
                    const Text('Welcome To Z0r0r0-Phumulani',
                        style: TextStyle(fontSize:20,
                        color: Colors.blue),
                    ),
                    const SizedBox(height: 25,),
                    TextFormField(
                     keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: "Enter your emailAddress",
                            border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      ),
                    const SizedBox(height: 25,),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Enter your password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        const Text("",
                      style: TextStyle(color: Colors.blue),

                      ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPassword()));

                        }, child: const Text('ForgetPassword'),)
                    ],),

                    const SizedBox(
                      height: 25,),
                    Container(height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    gradient: const LinearGradient(colors: [Colors.white,Colors.blue] ),
                    ),
                      child: MaterialButton(onPressed: (){},
                      child: const Text("LOGIN",style: TextStyle(fontSize: 25,
                      color:Colors.blue),),
                      ),
                    ),
                  const SizedBox(height: 30,),
                  const Divider(height: 49,
                  color: Colors.black,),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?",
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),),

                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                          
                        },
                            
                            child:const Text("Sign up"))

                      ],),

                   ],


                ),
              ),
              //const SizedBox(
               // height: 20,
             // ),
              //ElevatedButton(
                //onPressed:(){},
                  //child: const Text("Login")
                //),
            ],
          ),
        ),
      ),
    );
  }

  elevantedButton({required Text child, required Null Function() onPressed}) {}




}





