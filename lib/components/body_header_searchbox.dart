import 'package:agro_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: vDefaultPadding * 1.5),
      //It will cover 20% of total height
      height: size.height * 0.2,
      child: Stack(

        children: <Widget>[

          Container(
            padding: EdgeInsets.only(
              left: vDefaultPadding,
              right: vDefaultPadding,
              bottom: 30 + vDefaultPadding,
            ),
            //It will cover 20% of total height
            height: size.height * 0.2 - 40,
            //height: 107,
            decoration: BoxDecoration(
                color: vPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )
            ),

            child: Row(
              children: <Widget>[
                Text(
                  ' Hi e-shopper!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")

              ],
            ),

          ),


          // Search Bar
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,

            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: vDefaultPadding),
              padding:EdgeInsets.symmetric(horizontal: vDefaultPadding),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 60,
                    color: vPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),

              child: Row(

                children: <Widget>[

                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: vPrimaryColor.withOpacity(0.5),
                        ),

                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        //suffix is not working properly with SVG
                        //thats why we use a ROW
                        //suffixIcon: SvgPicture.asset("assets/icons/search.svg"),

                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),



            ),
          ),




        ],
      ),
    );
  }
}