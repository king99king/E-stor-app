import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/constants.dart';
import 'package:untitled6/models/product.dart';
import 'package:untitled6/screens/details_screen.dart';
import 'package:untitled6/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      bottom: false,
        child: Column(
           children:[
             SizedBox(height: kDefultPadding/2,),
            Expanded(child:Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
               ListView.builder(
                 itemCount: products.length,
                   itemBuilder: (context,index)=> ProductCard(
                     itemIndex: index,
                     product: products[index], press:(){Navigator.push(context, MaterialPageRoute(
                       builder: (context)=>DetailsScreen(
                         product: products[index],
                       ),),);},
                   ),
               ),
                 ],
               )
            ) ,
      ],

      ),
    );
  }
}

