import 'package:blinkit_app/domain/const/app_colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blinkit in',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '16 minutes',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'HOME - Muhammad Ibrar,Islamabad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(fontSize: 11),
                      decoration: InputDecoration(
                          hintText: 'Search “ice-cream”',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Row( // Use suffixIcon instead of suffix
                            mainAxisSize: MainAxisSize.min, // Ensure the Row doesn't take up too much space
                            children: [
                              Container(
                                height: 20,
                                width: 2,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.mic),
                            ],
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('assets/images/cart1.png'),
            SizedBox(height: 15,),
            Text('Reordering will be easy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 17),),
            Text(
              textAlign: TextAlign.center,
              'Items you order will show up here so you can buy \n them again easily.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 10),),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('BestSellers',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/cart2.jpg')),
                      ),
                    ),
                    Text('Amul Taaza Toned \n Fresh Milk',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w900),),
                    Row(
                      children: [
                        Image.asset('assets/images/timer.png'),
                        Text('16 MINS',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Text('\$ 27',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/cart3.jpg')),
                      ),
                    ),
                    Text('Potato (Aloo)',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w900),),
                    Row(
                      children: [
                        Image.asset('assets/images/timer.png'),
                        Text('16 MINS',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Text('\$ 37',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/cart4.jpg')),
                      ),
                    ),
                    Text('Hybrid Tomato',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w900),),
                    Row(
                      children: [
                        Image.asset('assets/images/timer.png'),
                        Text('16 MINS',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                      ],
                    ),
                    Text('\$ 37',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                  ],
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
