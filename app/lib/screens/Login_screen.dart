import 'package:app/screens/bottom_nav.dart';
import 'package:app/screens/signup_screen.dart';
import 'package:app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../consonants/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email =TextEditingController();
 TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: AppColors.color8,
        leading: IconButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> splash_screen()));
          },
           icon: const Icon(Icons.arrow_back , color: AppColors.color9,)
           ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(       
            child: Column(   
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget> [
               const SizedBox(height: 30,),
                const Text(
                    "Login",
                  style: TextStyle(
                  color: AppColors.color5,
                   fontSize: 25,
                   fontWeight: FontWeight.w800
                  ), 
                  ),
                  SizedBox(height: 20,),
                 const Text(
                    "Enter NISN and password for start studying now",
                   style: TextStyle(
                  color: AppColors.color5,
                   fontSize: 20,
                   fontWeight: FontWeight.w400
                  ),
                    ),
                    const SizedBox(height: 40,),
                    const Text(
                       "Username/Email",
                       style: TextStyle(
                        color: AppColors.color14
                       ),
                            ),
                   TextField(
                            obscureText: true,
                           controller: email,
                          decoration: const InputDecoration(
                               border : OutlineInputBorder(),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.lock ,
                              color: AppColors.color10,
                              ),
                            fillColor: AppColors.color2,
                            filled: true,
                         ),
                          ),
                          const SizedBox(height: 40,),
                          const Text(
                            "Password",
                       style: TextStyle(
                        color: AppColors.color14
                       ),
                            ),
                         TextField(
                            obscureText: true,
                           controller: password,
                          decoration: const InputDecoration(
                               border : OutlineInputBorder(),
                            hintText: 'Enter Password',
                            prefixIcon: Icon(
                              Icons.lock ,
                              color: AppColors.color10,
                              ),
                            fillColor: AppColors.color2,
                            filled: true,
                         ),
                          ),
                       const Text("Forgot password", style: TextStyle(color: AppColors.color1 ),),
                       const SizedBox(height: 30,),
                        Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(AppColors.color5)
                    ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: AppColors.color1
                          ),
                          ),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>const Bottom_navigation_bar()
                            ),
                            );
                        },
                        ),
                     ), 
                  const SizedBox(height: 10,),
                    const Center(
                       child: Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                     ),
                      const SizedBox(height: 10,),
                       Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(AppColors.color5)
                    ),
                        child: const Text(
                          "SIGNUP",
                          style: TextStyle(
                            color: AppColors.color1
                          ),
                          ),
                        onPressed: (){
                           Navigator.push(
                            context, MaterialPageRoute(builder: (context)=>const Signup()
                            ),
                            );
                        },
                        ),
                     ),
              ]
            ),
        ),
      ),
    );
  }
}