import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  void onPressedFav(){ //Creamos el metodo
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Agresgaste a tus Favoritos"),
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav, //Asignamos el metodo
      child: const Icon(
        Icons.favorite_border
      ),
    );
  }

}