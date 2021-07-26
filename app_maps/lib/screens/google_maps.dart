import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  @override
  _GoogleMapsState createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  List<Marker> markers = [];
  @override
  void initState() {
    initialize();
    super.initState();
  }

  initialize() {
    Marker firstMarker = Marker(
        markerId: MarkerId('1'),
        position: LatLng(42.34822622930518, 13.405894499989913),
        infoWindow: InfoWindow(title: 'Gramercy Travern'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        ));
    Marker secondMarker = Marker(
        markerId: MarkerId('2'),
        position: LatLng(42.34829366680887, 13.405132547027515),
        infoWindow: InfoWindow(title: 'PizzadÀ'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        ));
    Marker thirdMarker = Marker(
        markerId: MarkerId('3'),
        position: LatLng(42.34794654447963, 13.410797918834955),
        infoWindow: InfoWindow(title: 'Sushi Kaiten L\'Aquila'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        ));
    Marker fourthMarker = Marker(
        markerId: MarkerId('4'),
        position: LatLng(42.34601686072409, 13.40212261334474),
        infoWindow: InfoWindow(title: 'L\'Unico Posto'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        ));
    Marker fifthMarker = Marker(
        markerId: MarkerId('5'),
        position: LatLng(42.34768777454654, 13.407119090564393),
        infoWindow: InfoWindow(title: 'La Mala Lengua'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueRed,
        ));

    // markers.add(firstMarker);
    // markers.add(secondMarker);
    // markers.add(thirdMarker);
    // markers.add(fourthMarker);
    // setState(() {

    // });
    setState(() {
      markers.add(firstMarker);
      markers.add(secondMarker);
      markers.add(thirdMarker);
      markers.add(fourthMarker);
      markers.add(fifthMarker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google Maps",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(42.34822622930518,
              13.405894499989913), //42.34822622930518, 13.405894499989913 MyLocation
          zoom: 15,
        ),
        markers: markers.map((e) => e).toSet(),
      ),
    );
  }
}
