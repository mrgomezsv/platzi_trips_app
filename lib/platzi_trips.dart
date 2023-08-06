import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'location_trips.dart';
import 'notifications_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }

}

class _PlatziTrips extends State<PlatziTrips>{

  int indexTap = 0; //Creo el indice inicializando el primer layout d ela lista

  final List<Widget> widgetsChildren = [ //lista de layout
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
    LocationStrips(),
    NotificationsTrips()
  ];

  void onTapTapped(int index){

    setState(() {
      indexTap = index;
    });
  } //Metodo de la navegacion

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap], //Imcorporo
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.search),
              label: "",
            ),
            /*BottomNavigationBarItem(
              icon:  Icon(Icons.share_location),
              label: "",
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.notifications),
              label: "",
            ),*/
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