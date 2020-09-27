import 'package:flutter/material.dart';

import '../constants.dart';


class TitleMoreBtn extends StatelessWidget {
  final String title;
  final Function onpress;
  const TitleMoreBtn({
    Key key,
    this.title,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: vDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleCustomUnderline(dText: title),
          // we put a spacer here to separate TitleCustomUnderline and FlatButton
          Spacer(),
          // we put a spacer here to separate TitleCustomUnderline and FlatButton
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: vPrimaryColor,
            onPressed: onpress,
            child: Text("More", style: TextStyle(color: Colors.white),
            ),

          )

        ],
      ),
    );
  }
}

class TitleCustomUnderline extends StatelessWidget {
  final String dText;
  const TitleCustomUnderline({
    Key key,
    this.dText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(left: vDefaultPadding /4 ),

            child: Text(
              dText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: vDefaultPadding /4),
              height: 0,
              color: vPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

