import 'package:blinkit_app/domain/const/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/onboarding_screen.png'),
            SizedBox(height: 20,),
            Center(child: Image.asset('assets/images/blinkit.png')),
            Text('India\'s last minute app',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w900),),
            SizedBox(height: 50,),
            Text('Muhammad Ibrar',style: TextStyle(fontSize: 16),),
            Text('031656XXXXX',style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login with',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                  SizedBox(width: 10,),
                  Image.asset('assets/images/zomato.png')
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Access your saved addresses from Zomato automatically!',style: TextStyle(color: Colors.grey,fontSize: 12),),

          ],
        ),
      ),
    );
  }
}
