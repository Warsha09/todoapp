import 'package:assignments/controller/constant/app-colors/app-colors-view.dart';
import 'package:assignments/controller/constant/app-images/app-images.dart';
import 'package:assignments/controller/widgets/TextFormField.dart';
import 'package:assignments/controller/widgets/blacktext-heading%20widget.dart';
import 'package:assignments/controller/widgets/button%20widget.dart';
import 'package:assignments/controller/widgets/image-widget.dart';
import 'package:assignments/controller/widgets/normal%20text%20widget.dart';
import 'package:assignments/view/auth-view/sign%20in-view/signin-view.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
   SignUp({super.key});
TextEditingController fullNameController=TextEditingController();
   TextEditingController EnteryourEmailaddress=TextEditingController();
   TextEditingController CreateaPassword=TextEditingController();
   TextEditingController ConfirmyourPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(height: 30,),
    BlackTextHeading(text: 'Welcome on Board'),
    SizedBox(height: 20,),
    NormalTextWidget(text: 'Let’s help you meet up your task', textColor: AppColors.primaryColor,),
  TextFormFieldWidget(hintText: 'Enter your Full Name', controller: fullNameController),
    SizedBox(height: 10,),
    TextFormFieldWidget(hintText: 'Enter your Email address', controller: fullNameController),
    SizedBox(height: 10,),
    TextFormFieldWidget(hintText: 'Create a Password', controller: CreateaPassword),
    SizedBox(height: 10,),
    TextFormFieldWidget(hintText: 'Confirm your Password', controller: ConfirmyourPassword),
SizedBox(height: 20,),
ButtonWidget(text: 'Sign Up', onTap: (){}),
    SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalTextWidget(text: 'Already have an account ?', textColor: AppColors.blackColor),
        InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));
            },
            child: NormalTextWidget(text: 'Sign In', textColor: AppColors.primaryColor)),
      ],
    ),
  ],
),
    );
  }
}
