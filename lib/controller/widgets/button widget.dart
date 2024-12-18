import 'package:assignments/controller/constant/app-colors/app-colors-view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ButtonWidget extends StatelessWidget {
  String text;
  VoidCallback onTap;
   ButtonWidget({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44,
        width: 220,
        color: AppColors.primaryColor,
        child: Center(
          child: Text(text,style: GoogleFonts.poppins(
            color: AppColors.whiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),),
        ),
      ),
    );
  }
}
