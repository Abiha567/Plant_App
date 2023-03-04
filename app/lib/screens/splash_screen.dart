import 'package:app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../consonants/colors.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Column(
         children: [
           Container(
        width: 500.0,
       height: 400.0,
       decoration: BoxDecoration(
        image: const DecorationImage(image: NetworkImage("assets/homeImages/img26.png" )),
        color: AppColors.color5,
         borderRadius: BorderRadius.circular(20.0),
       ),
       child: const Center(
         child: Padding(
           padding: EdgeInsets.only(top: 250),
           child: Text(
              "Plantify",
              style: TextStyle(
                color: AppColors.color2,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 4
              ),
           ),
         ),
       ),
       
     ),
     const SizedBox(height: 20,),
     const Text(
        "GET READY BE HIGYENIC",
        style: TextStyle(
        color: AppColors.color5,
       fontWeight: FontWeight.w500,
       fontSize:25,
       letterSpacing: 4, 
     ),
     ),
     const SizedBox(height:5),
     const Text(
        "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
        style: TextStyle(
        color: AppColors.color5,
       fontWeight: FontWeight.normal,
       fontSize:15,
       letterSpacing: 4, 
     ),
     ),
         const SizedBox(height: 20,),
                     Container( 
                            width: 500,
                            child: ElevatedButton(
                        style: const ButtonStyle(
                     backgroundColor: MaterialStatePropertyAll(AppColors.color5)
                    ),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: AppColors.color8
                          ),
                          ),
                        onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                          },
               ),
           ),
        ]
     ),
     );
  }
}