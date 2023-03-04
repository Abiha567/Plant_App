import 'package:app/consonants/colors.dart';
import 'package:flutter/material.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({super.key});

  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
           const Padding(
                  padding: EdgeInsets.only(right: 250,top: 22),
                  child: Text(
                    "Your Bag",
                    style: TextStyle(
                      color: AppColors.color5,
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
           ProductListViewItem("assets/homeImages/img4.png", "Watermelon Peperomia", "1", "₹350"),
           ProductListViewItem( "assets/homeImages/img3.png", "Peperomia Obtusfolia" , "2", "\$400"),
           ProductListViewItem("assets/homeImages/img18.png", "Cactus", "1", "\$260"),
             const SizedBox(height: 20,),
                Row(
                  children:const  [
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Icon(Icons.local_shipping,color: AppColors.color5,),
                     Text(
                  "   Delivery",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    color: AppColors.color10
                  ),
                  ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 10,),
                    RichText(
                      text: const TextSpan(
                        text: "Order above ₹1200 to get",
                        children: <TextSpan> [
                        TextSpan(
                          text: "free delivery",
                        ),
                        TextSpan(
                          text: " Shop for more ₹190 ",
                          style: TextStyle(
                            color: AppColors.color5
                          )
                        )
                        ]
                      )
                       ),
                      const SizedBox(height: 10,),
                       Row(
                         children: [
                           const SizedBox(width: 10,),
                              Image.network("assets/OrderImages/img25.png"),
                          const SizedBox(width: 10,),
                            const Text(
                        "Apply Coupon",
                        style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                      color: AppColors.color10
                  ),
                        ),
                         ],
                       ) 
                  ],
                ),
           const SizedBox(height: 20,),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                 color: Colors.grey[300]
              ),
              padding:const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Total(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ProductListViewItem( String img ,String text , String quantity , String price){
    return Container(
      padding: const EdgeInsets.all(18.0),
      margin: const EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset("$img", height: 60,),
          ),
          Expanded(
            child: Text(
              "$text",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.color10,
              ),
              ),
            ),
            Row(
              children: [
               const Icon(Icons.add_circle_outline),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                  "$quantity",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.color10,
              ),
              ),
                ),
             const Icon(Icons.remove_circle_outline),
             Container(
            margin:const EdgeInsets.only(left: 20),
            child: Text(
                  "$price",
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.color10,
              ),
              ),
                ),
                SizedBox(height: 0,)
              ],
            )
        ],
      ),
    );
  }

  Widget Total(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
              Text(
                  "Total",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:AppColors.color10,
                fontSize:23
              ),
              ),
               Text(
                  "\$1410",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:AppColors.color10,
                fontSize: 23
              ),
              ),
      ],
    );
  }
}