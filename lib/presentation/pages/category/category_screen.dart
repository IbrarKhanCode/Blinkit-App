import 'package:blinkit_app/data/category/category_data.dart';
import 'package:blinkit_app/data/home/home_data.dart';
import 'package:blinkit_app/domain/const/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Grocery & Kitchen',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: secondImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffD9EBEB),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(secondImages[index])),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            textAlign: TextAlign.center,
                            secondTexts[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 11),)
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: categoryFirstImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,ind){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffD9EBEB),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(categoryFirstImages[ind])),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            textAlign: TextAlign.center,
                            categoryFirstTexts[ind],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 11),)
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Snacks & Drinks',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: categorySecondImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,inde){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffD9EBEB),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(categorySecondImages[inde])),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            textAlign: TextAlign.center,
                            categorySecondTexts[inde],style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 11),)
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text('Household Essentials',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w800),),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  itemCount: categoryThirdImages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,ind){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffD9EBEB),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Container(
                                height: 70,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(categoryThirdImages[ind])),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      )
    );
  }
}
