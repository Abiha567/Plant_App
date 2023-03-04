import 'package:app/screens/carts_screens.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/order_screen.dart';
import 'package:flutter/material.dart';
class Bottom_navigation_bar extends StatefulWidget {
  const Bottom_navigation_bar({super.key});

  @override
  State<Bottom_navigation_bar> createState() => _Bottom_navigation_barState();
}

class _Bottom_navigation_barState extends State<Bottom_navigation_bar> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List <Widget> screens =[
   const Home(),
   const Cart_screen(),
   const OrderDone(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
       bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  type: BottomNavigationBarType.fixed,
  onTap: _navigateBottomBar,
  items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:  'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
           label: 'cart',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
             label: 'checkout',
          ),
        ],
 ),
    );
  }
}