import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Varuna Yasas", "1 review 5 photo", "There is an amazing place in Siri Lanka"),
        Review("assets/img/mario.jpg", "Mario Roberto", "5 review 15 photo", "There is an amazing place in Siri Lanka"),
        Review("assets/img/garfield.jpg", "Garfield Bonachon", "2 review 3 photo", "There is an amazing place in Siri Lanka"),

      ],
    );
  }
  
}