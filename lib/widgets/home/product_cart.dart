import 'package:flutter/material.dart';
import 'package:untitled6/models/product.dart';

import '../../constants.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
     Key? key,
    required this.itemIndex,
    required this.product,
    required this.press,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefultPadding,
        vertical: kDefultPadding/2,
      ),

      child: InkWell(
      onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,15),
                    blurRadius: 25,
                    color: Colors.black54,

                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                    product.imge,
                    fit: BoxFit.cover,

                ),
              ),
            ),
            Positioned(
              bottom:0.0,
              right:0.0,
              child: SizedBox(
                height: 136.0,
                width:size.width-200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(), //to put a space betwwen each line
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
                      child: Text(product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Spacer(), //to put a space betwwen each line
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
                      child: Text(product.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Spacer(), //to put a space betwwen each line
                    Padding(
                      padding: const EdgeInsets.all(kDefultPadding),
                      child: Container(
                        padding:EdgeInsets.symmetric(horizontal: kDefultPadding*1.5 ,vertical: kDefultPadding/5,
                        ) ,
                        decoration:  BoxDecoration(
                          color: kSecondryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('السعر :\$${product.price} ريال'),
                      ),
                    )  ,
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
  }
}