import 'package:agro_app/components/body_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // this were we do all the magic
    return Scaffold(
    appBar: buildAppBar(),
      body: BodyComponent(),

    );
  }

  //we create an app bar
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
    );
  }



}
