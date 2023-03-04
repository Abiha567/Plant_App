import 'package:app/screens/bottom_nav.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/consonants/colors.dart';

class OrderReview extends StatefulWidget {
  const OrderReview({super.key});

  @override
  State<OrderReview> createState() => _OrderReviewState();
}

class _OrderReviewState extends State<OrderReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: AppColors.color1,
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
            letterSpacing: 5,
            color: AppColors.color7,
          ),
          ),
         actions: [
          IconButton(
          onPressed: (){},
           icon: const Icon(
            Icons.notifications,
            color:AppColors.color7
            )
           ),
           IconButton(
            onPressed: (){},
           icon: const Icon(
            Icons.menu,
            color: AppColors.color7,
            ),
            )
           ],
        leading: Image.asset("assets/OrderImages/img1.png",fit: BoxFit.fill,)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(right: 470),
                child: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom_navigation_bar()));
          },
           icon: const Icon(
            Icons.arrow_back,
            color:AppColors.color1
            ),),
              ),
            Stack(
              children: [
                Image.asset(
                  "assets/homeImages/img6.png",
                  alignment: Alignment.topRight,
                  ),
                  Image.asset("assets/OrderReviewImg/img9.png"),
                   Positioned(
                  height: 250,width: 200,left: 200,bottom: 0,
                  child: Image.network(
                    "assets/homeImages/img4.png"
                    ,alignment: Alignment.centerRight,),
                  ),
                 Padding(
                      padding: const EdgeInsets.only(left: 20 , top: 50 ),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                Text(
                "Air Purifier",
                  style: TextStyle(
                      color: AppColors.color10,
                       fontWeight: FontWeight.w600,
                       fontSize: 20,
                        ),
                        ), 
                       Icon(Icons.pets,color: AppColors.color5,),
                      SizedBox(height: 15,),  
                      Text(
                  "Watermelon",
                  style: TextStyle(
                      fontSize: 25 , 
                      fontWeight: FontWeight.bold
                  ),
                  ),
                   SizedBox(height: 10,),
                   Text(
                    "Peperomia",
                    style: TextStyle(
                      fontSize: 25 , 
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 35,),
                   Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.w400,
                    color: AppColors.color15
                  ),
                  ),
                    SizedBox(height: 8,),
                   Text(
                  '\$200',
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: AppColors.color7
                  ),
                  ),
                   SizedBox(height: 35,),
                   Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.w400,
                    color: AppColors.color15
                  ),
                  ),
                     SizedBox(height: 8,),
                   Text(
                  "6” h",
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: AppColors.color7
                  ),
                  ), 
                        ],
                      ),
                      ),
              ] 
              ),
                    const SizedBox(height: 13,),
                    const Padding(
                       padding: EdgeInsets.only(right: 350),
                       child: Text(
                  "Overview",
                  style: TextStyle(
                        color: AppColors.color10,
                         fontWeight: FontWeight.w600,
                         fontSize: 25,
                          ),
                          ),
                     ),
                      const SizedBox(height: 13,),
                    Row(
                      children: [
                        PlantDetails(Icons.water_drop_outlined, "250ml","WATER"),
                       PlantDetails(Icons.wb_sunny_outlined, "35%-40%","LIGHT"),
                        PlantDetails(Icons.stream, "250gm","FRTILIZER")
                      ],
                    ),
                     const SizedBox(height: 13,),
                    const Padding(
                    padding:  EdgeInsets.only(right: 350),
                      child: Text(
                  "Plant Bio",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.color10
                  ),
                   ),
                    ),
               const SizedBox(height: 13,),
               const Padding(
                   padding:  EdgeInsets.only(left: 15,top: 5),
                   child:  Text(
"No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it."
              ,style: TextStyle(
                wordSpacing: 3,
              ),
                    ),
                 ),  
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
            children: [
              Image.network("assets/OrderReviewImg/img12.png", height: 120, width: 144,),
               const SizedBox(width: 10,),
              Image.network("assets/OrderReviewImg/img10.png" , height: 120, width: 144,),
               const SizedBox(width: 10,),
              Image.network("assets/OrderReviewImg/img11.png" , height: 120, width: 144,),
            ],
           ),
         ),
                   Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  color: AppColors.color1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Image.network("assets/homeImages/img3.png"),
                    Image.network("assets/homeImages/img6.png"),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                 const Text("Air" , style:  TextStyle(fontWeight: FontWeight.bold),),
                 const Text("Purifier", style:  TextStyle(fontWeight: FontWeight.bold),),
                 const Text("Peperomia" , style:  TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children:  [
                     const Padding(padding: EdgeInsets.only(left: 5 )),
                      const Text(
                  "\$350",
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: AppColors.color8
                  ),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
                    ],
                  )
                  ],
                 )
                  ],
              ), 
           ),

            Row(
              children: [
               const Padding(padding: EdgeInsets.only(left: 20)),
                Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  color: AppColors.color16,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20)
                  ),
                ),
                child:
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget> [
                    Image.network("assets/homeImages/img3.png"),
                    Image.network("assets/homeImages/img6.png"),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                  const Text("Air" , style:  TextStyle(fontWeight: FontWeight.bold),),
                  const Text("Purifier", style:  TextStyle(fontWeight: FontWeight.bold),),
                  const Text("Cactus" , style:  TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children:  [
                      const Padding(padding: EdgeInsets.only(left: 5 )),
                    const Text(
                  "\$260",
                  style: TextStyle(
                    fontSize: 17 , 
                    fontWeight: FontWeight.bold,
                    color: AppColors.color8
                  ),
                  ),
                  const SizedBox(width: 8,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
                    ],
                  )
                  ],
                 )
                  ],
              ),
           ),
      ]
      ),]),
      const SizedBox(height: 30,),
            Column(
              children: [
                Container(
                height: 200,
                width: 400,
                decoration: const BoxDecoration(
                  color: AppColors.color13,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                 image: DecorationImage(
              image: NetworkImage(
                'assets/OrderReviewImg/img13.png')
                 , alignment: Alignment.centerRight),
                ),
               child:  Padding(
                 padding: const EdgeInsets.only(right: 180 , top: 20),
                 child: Column(
                  children: <Widget> [
                   const Text(
                      'That very plant?' , 
                    style: TextStyle( 
                      fontWeight: FontWeight.bold , 
                      fontSize: 20),
                      ),
                     const  SizedBox(height: 20,),
                     const Text(
                        "Just Scan and the AI will know exactly",
                        style: TextStyle(
                          wordSpacing: 3
                        ),
                        ),
                        const  SizedBox(height: 20,),
                         ElevatedButton(
                          child: Text("Scan Now"),
                          style:  ElevatedButton.styleFrom(
                            backgroundColor: AppColors.color5,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(builder: (context)=> OrderDone())
                              );
                          },
                          ) ,
                           ], 
             ),
           ),
                   ),
              ],
                ),
                   const SizedBox(height: 50,)
      ]
      )
      )
       );
  }
}

Widget PlantDetails($icon,String $text1,String $text2){
  return SizedBox(
    width: 150,
    child: ListTile(
      leading: Icon($icon),
      title: Text($text1),
      subtitle: Text($text2),
    ),
  );
}