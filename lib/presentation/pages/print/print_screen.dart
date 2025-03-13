import 'package:blinkit_app/domain/const/app_colors.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
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
            SizedBox(height: 50,),
            Text('Print Store',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
            Text('Blinkit ensures secure prints at every stage',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 50,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          'Documents',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('✦',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10,),
                            Text('Price starting at rs 3/page',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('✦',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10,),
                            Text('Paper quality: 70 GSM',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('✦',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 10,),
                            Text('Single side prints',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color(0xff27AF34),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text('Upload Files',style: TextStyle(color: Colors.white,fontSize: 12),)),
                        )
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/images/print.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
