import 'package:assignments/ButtonWidget.dart';
import 'package:assignments/orangetextwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class GoldHome extends StatefulWidget {
  const GoldHome({super.key});

  @override
  State<GoldHome> createState() => _GoldHomeState();
}

class _GoldHomeState extends State<GoldHome> {
  TextEditingController goldPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController gramQuantityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pointQuantityController = TextEditingController();
  double res = 0.0;
  double totalratti = 0.0;
  double totalTolaPrice = 0.0;
  double totalgramPrice = 0.0;
  double totalpointPrice = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(goldPriceController.text=='')
          {
            Get.snackbar('error', 'Gold price must be filled');
            //goldPriceController.text='0';
          }
          else
          {
            if(tolaQuantityController.text==''){
              tolaQuantityController.text='0';
            }
            if(gramQuantityController.text=='')
            {
              gramQuantityController.text='0';
            }
            if(rattiQuantityController.text=='')
            {
              rattiQuantityController.text='0';
            }
            if(pointQuantityController.text=='')
            {
              pointQuantityController.text='0';
            }
            // double n1=double.parse(goldPriceController.text);
            double goldPrice = double.parse(goldPriceController.text);
            double tolaQuantity = double.parse(tolaQuantityController.text);
            double gramQuantity = double.parse(gramQuantityController.text);
            double rattiQuantity = double.parse(rattiQuantityController.text);
            double pointQuantity = double.parse(pointQuantityController.text);
            // to find rs of 1 gram
            double pricePerGram = goldPrice / 12;
            print('price per gram=$pricePerGram');
            // to find rs of 1 ratti

            double pricePerRatti = goldPrice / 96;
            print('price per ratti=$pricePerRatti');

            //to find total price of gram
            double totalGramPrice = pricePerGram * gramQuantity;

            print('total gram price=$totalGramPrice');
            double totalRattiprice = pricePerRatti * rattiQuantity;
            print('total ratti price=$totalRattiprice');
            totalRattiprice = pricePerRatti * double.parse(rattiQuantityController
                .text);
            double pricePerpoint = goldPrice / 100;
            totalpointPrice = pricePerpoint * double.parse(pointQuantityController
                .text);

            totalTolaPrice = goldPrice * tolaQuantity;
            totalgramPrice = pricePerGram * gramQuantity;
            res = (goldPrice * tolaQuantity) + totalGramPrice + totalRattiprice;
            setState(() {

            });
          }
        },
        backgroundColor: Colors.yellow,
      ),
      appBar: AppBar(
        title: Text('Gold App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                controller: goldPriceController,
                decoration: InputDecoration(
                  hintText: 'Enter Tola Price',
                ),

              ),

            ),

            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                controller: tolaQuantityController,
                decoration: InputDecoration(
                  hintText: 'Enter Tola Quantity',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                controller: gramQuantityController,
                decoration: InputDecoration(
                  hintText: 'Enter grams',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                controller: rattiQuantityController,
                decoration: InputDecoration(
                  hintText: 'Enter ratti',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                controller: pointQuantityController,
                decoration: InputDecoration(
                  hintText: 'Enter points',
                ),
              ),
            ),
           // Text(
            //  'Total price RS.$res', style: TextStyle(color: Colors.orange),),
          //  Text(,
           //   style: TextStyle(color: Colors.orange),),
           // Text('Total Tola Price Rs.$totalTolaPrice',
           //   style: TextStyle(color: Colors.orange),),
           // Text(,
            //  style: TextStyle(color: Colors.orange),),
            SizedBox(height: 10,),
            OrangeTextWidget(text: 'total Price Rs.$res',),
            OrangeTextWidget(text: 'GramTotal Price Rs.$totalgramPrice',),
            OrangeTextWidget(text: 'Total point Price Rs.$totalpointPrice',),
    OrangeTextWidget(text: 'Total Tola Price Rs.$totalTolaPrice',),
           ButtonWidget(buttonText: 'Refresh', onTap: (){
             
           }),
            FloatingActionButton(onPressed: ()
            {
              Get.snackbar(
                icon:Icon(Icons.error_outline),
                'error',
                titleText:Text('error',style: TextStyle(),),
                duration:Duration(milliseconds: 2500),
                'field must be filled',
                backgroundColor:Colors.orange.withOpacity(0.8),//title of error //discrition of the title
              );
            }
            )


          ],
        ),
      ),
    );
  }
}
