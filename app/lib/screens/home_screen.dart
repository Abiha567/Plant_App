import 'package:app/consonants/colors.dart';
import 'package:app/screens/plant_review.dart';
import 'package:app/screens/review_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
        backgroundColor: AppColors.color8 ,
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
        leading:const Image(image: AssetImage("assets/OrderImages/img1.png")) 
      ),
       body:
      SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20,right: 20),
              child: Column(
              children:  [
                Image.network("assets/homeImages/img23.jpg" , alignment: Alignment.bottomCenter,),
               const SizedBox(height: 20,),
              const TextField(
              decoration: InputDecoration(
                 hintText: "Search",
                 prefixIcon: Icon(Icons.search),
                 suffixIcon: Icon(Icons.filter_alt_outlined),
                 border: OutlineInputBorder(),
              ),
              ),
               const SizedBox(height: 40,),
       InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Plant_review()));},
         child: Products(
          "assets/homeImages/img5.png",
           "assets/homeImages/img3.png", 
           "Air Purifier",
           "assets/homeImages/img6.png",
           "Peperomia",
           "400/=",
           "assets/homeImages/img7.png",
           "assets/homeImages/img8.png"
         ),
       ),
       InkWell(
         onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderReview()));},
         child: Products(
          "assets/homeImages/img14.png",
           "assets/homeImages/img4.png", 
           "Air Purifier",
           "assets/homeImages/img6.png",
           "Watermelon",
           "400/=",
           "assets/homeImages/img7.png",
           "assets/homeImages/img8.png"
         ),
       ),
         Container (
          padding: const EdgeInsets.only(top: 15,left: 15,right: 10),
          height: 200,
          width: 500,
           decoration:const BoxDecoration(
           color: AppColors.color3,  
           borderRadius: BorderRadius.all(
           Radius.circular(20),
    ),
  ),
          child: Column(
            children:  [
               const Text(
                "Invite a Friend and ",
                 style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
                ),
              const Text(
                "earn Plantify rewards",
                 style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
                ),
              Row(
                children: [
                  Image.asset(
                    "assets/OrderImages/img1.png",
                    alignment: Alignment.centerRight,
                    ),  const SizedBox(height: 5),
          const Text(
            " Get Instant Discounts  ",
            style: TextStyle(
              color: AppColors.color5
            ),
            ),
         ElevatedButton (
          onPressed: (){ },
           style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColors.color12),
           ),
           child: const Text(
            "Invite",
            ),
          ),
                ],
            ),    
            ],
          ),
          ),
         const SizedBox(height: 25,),
      Products(
        "assets/homeImages/img20.png",
        "assets/homeImages/img15.png",
        "Air Purifier", 
        "assets/homeImages/img6.png",
        "Croton Petra",
       "160/=",
       "assets/homeImages/img7.png",
        "assets/homeImages/img8.png"),
      Products(
        "assets/homeImages/img19.png",
        "assets/homeImages/img16.png",
        "Air Purifier", 
        "assets/homeImages/img6.png",
        "Bird's Nest Fern",
       "160/=",
       "assets/homeImages/img7.png",
        "assets/homeImages/img8.png"),
        Image.network("assets/homeImages/img24.png"),
        const SizedBox(height: 15,),
          RichText(
             text: const TextSpan(
              text:
"Caring for plants should be fun. That's why we offer 1-on-1 virtual consultations from the comfort of your home or office.",
               style: TextStyle(
              color: AppColors.color7 , 
              letterSpacing: 2,
              wordSpacing: 3,
              fontSize: 16
                ),
                children: [
                 TextSpan(
                text: "------Learn More",
                 style: TextStyle(
                fontWeight: FontWeight.bold,
                 color: AppColors.color7, 
                  fontSize: 16, 
                   ),
                    )
                    ]
                    )
                    ),
         const  SizedBox(height: 20,),
       Products(
        "assets/homeImages/img22.png",
        "assets/homeImages/img18.png",
        "Air Purifier", 
        "assets/homeImages/img6.png",
        "Cactus",
       "Rs.260",
       "assets/homeImages/img7.png",
        "assets/homeImages/img8.png"),
         Products(
        "assets/homeImages/img21.png",
        "assets/homeImages/img17.png",
        "Air Purifier", 
        "assets/homeImages/img6.png",
        "Aloe Vera",
       "Rs.260",
       "assets/homeImages/img7.png",
        "assets/homeImages/img8.png"),
       const Text(
          "Plant a Life",
          style: TextStyle(
            color: AppColors.color7,
            fontWeight: FontWeight.bold,
             fontSize: 35
          ),
          ),
           const SizedBox(height: 5,),
         const Text(
          "Live amongst Living",
          style: TextStyle(
            color: AppColors.color7,
            fontWeight: FontWeight.w600,
             fontSize: 25
          ),
          ),
          const SizedBox(height: 5,),
          const Text(
          "Spread the joy",
          style: TextStyle(
            color: AppColors.color7,
            fontWeight: FontWeight.w200,
            fontSize: 20
          ),
          ),
          const SizedBox(height: 50,),
              ],
    )
            ),
          ]
      )
    )
    );
}
}

  Widget Products(
  String $img1,String $img2,String $text1,String $img3,String $text2,String $text3,String $img4,String $img5) {
    return
  SingleChildScrollView(
              child:Stack(
                 children:[
               Image.network($img1),
               Positioned(
                 height: 150,width: 130,left: 150,bottom: 10,
                child: Image.network($img2)
                 ),
               Row(
                 children: [
                   Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                     const Padding(padding: EdgeInsets.only(top: 30,left: 10)),
                      Text(
                        $text1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.color10,
                          fontSize: 14
                        ),
                      ),
                 Image.network($img3),
                    Text(
                  $text2,
                    style: const TextStyle(
                    color: AppColors.color10,
                     fontWeight: FontWeight.bold,
                     fontSize: 32
                      ),
                      ),
                Row(
                  children: [
                      Text(
                        $text3,
                        style: const TextStyle(
                        color: AppColors.color10,
                       fontWeight: FontWeight.bold,
                      )
                  ),  
                  const  SizedBox(width: 10,),
                    Image.network($img4),
                    const  SizedBox(width: 10,),
                      Image.network($img5),
                      ],
                    ),  
                    const SizedBox(height: 50,),
                   ],
                    ),
                 ],
               ),
          ],
               )
  );
}