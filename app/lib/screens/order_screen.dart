import 'package:app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import '../consonants/colors.dart';

class OrderDone extends StatefulWidget {
  const OrderDone({super.key});

  @override
  State<OrderDone> createState() => _OrderDoneState();
}

class _OrderDoneState extends State<OrderDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.color8,
            leading: IconButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> splash_screen()));
          },
           icon: const Icon(Icons.arrow_back_ios_new , color: AppColors.color9,)
           ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 70, right: 30),
          child: Column(
            children:  [
             const Image(
                image: NetworkImage("assets/OrderImages/circle.png"),
                ),
              const Text(
                "Order",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: AppColors.color5,
                  fontSize: 36
                ),
                ),
              const SizedBox(height: 10,),
              const Text(
                  "Received",
                   style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: AppColors.color5,
                  fontSize: 36
                ),
                  ),
                const   SizedBox(height: 10),
                 const Text(
                    "Order ID : #293092309",
                    style: TextStyle(
                      color: AppColors.color7
                    ),
                  ),
               const  SizedBox(height: 50,),
                const Image(
                 image: NetworkImage("assets/OrderImages/img1.png"),
                    ),
                    const SizedBox(height: 20,),
                   SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll(AppColors.color5)
                      ),
                     child: const Text(
                      " Track Order ",
                      style: TextStyle(
                        color: AppColors.color8,
                      ),
                      ),
                      onPressed: (){},
              ),
             )
            ],
          ),
        ),
      ),
    );
  }
}