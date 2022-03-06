import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/constants.dart';
import 'package:untitled6/models/product.dart';
import 'Product_image.dart';
import 'color_dot.dart';
class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefultPadding*1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                Center(
                  child: ProductImage(size: size,image: product.imge,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor: Colors.brown,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor: Colors.purpleAccent,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor: Colors.black,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefultPadding/2),
                child: Text(product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text('السعر :\$${product.price} ريال',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: Colors.deepPurple,
              ),
              ),
              SizedBox(height:kDefultPadding)
            ],
          ),
        ),
        Column(
        children:[
          SizedBox(height:kDefultPadding*25)  ,
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefultPadding*1.5 ,vertical: kDefultPadding/5),
          child:Text(product.description,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
          SizedBox(height:kDefultPadding*5)
          ],
        ),
      ],
    );
  }
}

