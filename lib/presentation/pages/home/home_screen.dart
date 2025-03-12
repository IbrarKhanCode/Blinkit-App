import 'package:blinkit_app/data/home/home_data.dart';
import 'package:blinkit_app/domain/const/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.redColor,
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
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '16 minutes',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'HOME - Muhammad Ibrar,Islamabad',
                                style: TextStyle(
                                    color: Colors.white,
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
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
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
                    SizedBox(height: 20),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                            Image.asset('assets/images/home1.png'),
                            Image.asset('assets/images/home2.png'),
                            SizedBox(width: 10,),
                            Text('Mega Diwali Sale',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/home3.png'),
                            Image.asset('assets/images/home4.png'),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: firstImages.length,
                          itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: 115,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffEAD3D3),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Text(firstTexts[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 10),),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(firstImages[index]))
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/home9.png')),
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  Text('Golden Glass \n Wooden Lid Candle (Oudh)',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Image.asset('assets/images/timer.png'),
                      Text('16 MINS',style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w500),),

                    ],
                  ),
                  Text('\$ 79',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                ],
              ),

            ],
          ),
        ));
  }
}
