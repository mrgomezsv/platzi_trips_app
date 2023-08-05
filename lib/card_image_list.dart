import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget> [
            CardImage("assets/img/beatch.jpeg"),
            CardImage("assets/img/beatch_palm.jpeg"),
            CardImage("assets/img/mountain.jpeg"),
            CardImage("assets/img/mountain_stars.jpeg"),
            CardImage("assets/img/rive.jpeg"),
            CardImage("assets/img/sunset.jpeg"),
          ],
        ),
    );
  }
  
}