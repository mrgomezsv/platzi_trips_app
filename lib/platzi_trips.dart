import 'package:flutter/material.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.search),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.person),
              label: "",
            ),
          ]
        ),
      ),
    );
  }

}