import 'package:flutter/material.dart';

import '../constants.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            onpress: (){},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            onpress: (){},
          ),

        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  final String image;
  final Function onpress;
  const FeaturePlantCard({
    Key key,
    this.image,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.only(
          left: vDefaultPadding,
          top: vDefaultPadding / 2,
          bottom: vDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),

        ),
      ),
    );
  }
}
