import 'package:blinkit_app/presentation/pages/cart/cart_screen.dart';
import 'package:blinkit_app/presentation/pages/category/category_screen.dart';
import 'package:blinkit_app/presentation/pages/home/home_screen.dart';
import 'package:blinkit_app/presentation/pages/print/print_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

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

        bottomNavigationBar:
            Stack(
              children: [
                BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: currentIndex,
                  onTap: onTapped,
                  backgroundColor: Colors.white,
                  items: [
                    BottomNavigationBarItem(
                        label: "Home",
                        icon: Image.asset('assets/images/home.png')
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/shopping_bag.png'),
                      label: "Cart",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/category.png'),
                      label: "Category",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/printer.png'),
                      label: "Printer",
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: currentIndex * (MediaQuery.of(context).size.width / 4),
                  child: Container(
                    width: 100,
                    height: 2,
                    color: Colors.black, // Customize the line color
                  ),
                ),
              ],

            ),
    );
  }
}
