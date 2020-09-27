import 'package:agro_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body_header_searchbox.dart';

class BodyComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   // It will provide total height and width of the current screen
    Size size = MediaQuery.of(context).size;
    //it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),

          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Text(
                  "Recommended",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

