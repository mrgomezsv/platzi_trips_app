import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool idPressed = false;

  void onPressedFav(){ //Creamos el metodo

    setState(() {
      idPressed = ! idPressed;
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            //content: Text("Agresgaste a tus Favoritos"),
            content: Text(((idPressed)?"Agregaste a":"Eliminaste de")+" favoritos"),
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav, //Asignamos el metodo
      child: Icon(
          (idPressed)? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}