import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;
  final double height;

  GradientBack(this.title, {required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 250.0, // Usamos 'height' si está definido, de lo contrario, 250.0 por defecto
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
