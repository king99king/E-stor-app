import 'package:flutter/material.dart';

import '../../constants.dart';
class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size, required this.image,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefultPadding),
      height: size.width*0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width*0.7,
            width: size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white60,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(image,
            height: size.width*0.75,
            width: size.width*0.70,
            fit: BoxFit.cover,),
        ],
      ),
    );
  }
}



