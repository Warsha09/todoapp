import 'package:flutter/material.dart';
class CustomButtonClass extends StatefulWidget {
  const CustomButtonClass({super.key});

  @override
  State<CustomButtonClass> createState() => _CustomButtonClassState();
}

class _CustomButtonClassState extends State<CustomButtonClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:InkWell(
          onTap: (){},

        child: Container(
          height: 43,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text('Login',style: TextStyle(color:Colors.white),),),
        ),
      ),

      ), );
  }
}
