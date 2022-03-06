import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled6/constants.dart';
import 'package:untitled6/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),

    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("متجر الألكترونيات",
      style: GoogleFonts.getFont('Almarai'),
    ),
      centerTitle: false,
      actions: [
        IconButton(icon: Icon(Icons.menu),onPressed: (){},)
      ],
    );
  }
}






