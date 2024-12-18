import 'package:flutter/material.dart';

import '../constant/app-colors/app-colors-view.dart';
class TextFormFieldWidget extends StatelessWidget {
  String hintText;
  TextEditingController controller;
   TextFormFieldWidget({super.key,required this.hintText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,borderRadius: BorderRadius.circular(11),
        ),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
