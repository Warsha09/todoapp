import 'package:flutter/material.dart';
class OrangeTextWidget extends StatelessWidget {
  String text;
   OrangeTextWidget({super.key,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.orange,fontSize:20,fontWeight: FontWeight.bold),);
  }
}
