import 'package:assignments/controller/constant/app-colors/app-colors-view.dart';
import 'package:assignments/controller/constant/app-images/app-images.dart';
import 'package:assignments/controller/widgets/TextFormField.dart';
import 'package:assignments/controller/widgets/blacktext-heading%20widget.dart';
import 'package:assignments/controller/widgets/button%20widget.dart';
import 'package:assignments/controller/widgets/image-widget.dart';
import 'package:assignments/controller/widgets/normal%20text%20widget.dart';
import 'package:flutter/material.dart';
class SignIn extends StatelessWidget {
   SignIn({super.key});
TextEditingController EnteryourEmailAddress=TextEditingController();
   TextEditingController Confirmpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          BlackTextHeading(text: 'Welcome Back!'),
          SizedBox(height: 20,),
          ImageWidget(image: AppImages.LoginImage),
        TextFormFieldWidget(hintText: 'Enter your Email Addess', controller: EnteryourEmailAddress),
          SizedBox(height: 10,),
          TextFormFieldWidget(hintText: 'Confirm Password', controller: Confirmpassword),
          SizedBox(height: 25,),
          NormalTextWidget(text: 'forget Password', textColor: AppColors.primaryColor),
          SizedBox(height: 10,),
          ButtonWidget(text: 'Sign In', onTap: (){})
        ],
      ),
    );
  }
}
