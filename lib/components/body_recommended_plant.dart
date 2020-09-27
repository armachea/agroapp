import 'package:flutter/material.dart';

import '../constants.dart';


class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key key,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendedPlantCard(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 450,
                  onpress: (){},
                ),
                RecommendedPlantCard(
                  image: "assets/images/image_2.png",
                  title: "Angelica",
                  country: "SPAIN",
                  price: 200,
                  onpress: (){},
                ),
                RecommendedPlantCard(
                  image: "assets/images/image_3.png",
                  title: "Marvise",
                  country: "ECUADOR",
                  price: 320,
                  onpress: (){},
                ),
              ],
            ),

    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function onpress;
  const RecommendedPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.onpress,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: vDefaultPadding,
        top: vDefaultPadding / 2,
        bottom: vDefaultPadding* 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[

          Image.asset(image),

          GestureDetector(
            onTap: onpress,
            child: Container(

              padding: EdgeInsets.all(vDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: vPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),

              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                              text: "$country".toUpperCase(),
                              style: TextStyle(color: vPrimaryColor.withOpacity(0.5),
                          )
                          ),
                        ]
                    ),
                  ),
                  Spacer(),
                  Text('\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: vPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
