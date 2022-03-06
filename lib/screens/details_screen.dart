import 'package:flutter/material.dart';
import 'package:untitled6/constants.dart';
import 'package:untitled6/models/product.dart';
import 'package:untitled6/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );

  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefultPadding),
        icon:Icon(Icons.arrow_back,
        color:kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text('رجوع',style: Theme.of(context).textTheme.bodyText2,),
    );
  }
}






