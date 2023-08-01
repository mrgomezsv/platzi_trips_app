import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  //variables declaradas
  String namePlace;
  int starts;
  String descriptionPlace;

  // Constructor
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);


  String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type "
      "specimen book. \n\n It has survived not only five centuries, but also the leap "
      "into electronic."
      "This is a new paragraph in the description with a line break."
      "And this is another paragraph with more text.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2c611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: const Text(
            "Duwili Ella",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        ),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0

      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)
        ),

      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [title_stars, description],
    );
  }
}
