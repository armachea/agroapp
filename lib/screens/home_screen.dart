import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    // this were we do all the magic
    return Scaffold(

      //we create an app bar
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: (){}),
      ),


    );
  }
  
}