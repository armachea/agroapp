import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'body_header_searchbox.dart';
import 'body_recommended_plant.dart';
import 'body_title_more_btn.dart';

class BodyComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // It will provide total height and width of the current screen
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleMoreBtn(title: "Recommended", onpress: (){}),
          RecommendedPlants(),
          TitleMoreBtn(title: "Featured Plants", onpress: (){}),

        ],

      ),

    );


    //return RecommendedPlants(size: size);
  }
}
