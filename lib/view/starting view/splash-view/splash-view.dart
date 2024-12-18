import 'package:assignments/controller/constant/app-colors/app-colors-view.dart';
import 'package:assignments/controller/constant/app-images/app-images.dart';
import 'package:assignments/controller/widgets/blacktext-heading%20widget.dart';
import 'package:assignments/controller/widgets/button%20widget.dart';
import 'package:assignments/controller/widgets/image-widget.dart';
import 'package:assignments/view/auth-view/signup-view/signup-view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: Center(
        child:
        Column(
          children: [
            SizedBox(height: 50,),
           ImageWidget(image: AppImages.SplashImage),
            SizedBox(height: 30,),
           BlackTextHeading(text: 'Get things done with TODo'),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Center(
                child: Text

                  ('Lorem ipsum dolor sit amet consectetur adipisicing. Maxime tempore! Animi nemo aut atque',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
              ),
            ),
            SizedBox(height: 30,),
            ButtonWidget(text: 'Get Started', onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
            })
          ],
        ),



        ),


    );
  }
}
