import 'package:app/screens/bottom_nav.dart';
import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../consonants/colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email =TextEditingController();
 TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColors.color2,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
          },
           icon: const Icon(Icons.arrow_back , color: AppColors.color9,)
           ),
      ),
      body:SingleChildScrollView(
         child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget> [
             const SizedBox(height: 30,),
              const Text(
                  "Signup",
                  textAlign: TextAlign.center,
                style: TextStyle(
                color: AppColors.color5,
                 fontSize: 25,
                 fontWeight: FontWeight.w800
                ), 
                ),
              const SizedBox(height: 20,),
               const Text(
                  "Enter No. Your cellphone and wait for the code authentic sent",
                  style: TextStyle(
                color: AppColors.color5,
                 fontSize: 20,
                 fontWeight: FontWeight.w400
                ),    
                  ),
                  const SizedBox(height: 40,),
                  const Text(
                     "NISN",
                     style: TextStyle(
                      color: AppColors.color2
                     ),
                          ),
                  TextField(
                        obscureText: true,
                        controller: password,
                      decoration:const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "NISN Number",
                        prefixIcon: Icon(
                          Icons.lock ,
                          color: AppColors.color10,
                          ),
                      ),
                      ),
                       const SizedBox(height: 40,),
                   const Text(
                     "NISN",
                     style: TextStyle(
                      color: AppColors.color2
                     ),
                          ),
                       TextField(
                        obscureText: true,
                        controller: password,
                      decoration:const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "NISN Number",
                        prefixIcon: Icon(
                          Icons.lock ,
                          color: AppColors.color10,
                          ),
                     ),
                      ),
                     const SizedBox(height: 40,),
                     Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(AppColors.color5)
                    ),
                        onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom_navigation_bar()));
                        },
                        child: const Text("SIGN UP"),
                        ),
                     )
            ]
          ),
          ),
       ),
    );
  }
}