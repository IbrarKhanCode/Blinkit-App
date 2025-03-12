import 'package:blinkit_app/presentation/pages/cart/cart_screen.dart';
import 'package:blinkit_app/presentation/pages/category/category_screen.dart';
import 'package:blinkit_app/presentation/pages/home/home_screen.dart';
import 'package:blinkit_app/presentation/pages/print/print_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {

  int currentIndex = 0;

  List<Widget> screens = [

    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),

  ];

  void onTapped(int index){

    setState(() {
      currentIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

      ),
    );
  }
}
