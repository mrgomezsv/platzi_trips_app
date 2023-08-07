import 'package:flutter/material.dart';

class CardImageDetail extends StatelessWidget{

  final String title;
  final String detail;
  final String pathImage;
  final int steps;

  CardImageDetail(this.title, this.detail,this.pathImage, this.steps);

  @override
  Widget build(BuildContext context) {

    final cardImage = Container(
      height: 230,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                blurRadius: 16,
                color: Colors.black26,
                offset: Offset(0, 10)
            )
          ]
      ),
    );

    final cardDetail =  Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 45, right: 45, top: 170, bottom: 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                blurRadius: 16,
                color: Colors.black26,
                offset: Offset(0, 10)
            )
          ],
          color: Colors.white
      ),
      child: Stack(
        alignment: const Alignment(1.0, 2.0),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  detail,
                  style: const TextStyle(
                      color: Colors.black45
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Steps $steps",
                  style: const TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(232, 166, 90, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const FloatingActionButton(
              onPressed: null,
              mini: true,
              backgroundColor: Color.fromRGBO(102, 216, 105, 1),
              child: Icon(Icons.favorite)
          )
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        cardImage,
        cardDetail
      ],
    );
  }
}