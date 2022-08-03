import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travella_01/information_page/constants.dart';

class GoogleMapsPage extends StatefulWidget {
  const GoogleMapsPage({Key? key}) : super(key: key);

  @override
  State<GoogleMapsPage> createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  late GoogleMapController googleMapController; //controller nesnesi
  static const LatLng sourceLocation =
      LatLng(40.8767434,31.1988545); //Aydınpınar Şelalesi Tabiat Parkı
  //source location bu sayfa için değiştirilebilir.

  Set<Marker> markers = {};

//-------------------------User Location----------------------------------------

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: userLocationOnPressed,
      child: Icon(Icons.my_location),
    );
  }

  void userLocationOnPressed() async {
    Position position = await _determinePosition();

    googleMapController
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 11,
    )));

    markers.clear;

    setState(() {
      markers.add(Marker(
        markerId: const MarkerId(
          "currentLocation",
        ),
        icon: currentLocationIcon,
        position: LatLng(position.latitude, position.longitude),
      ));
    });
  }

  void setCustomMarkerCurrentLocationIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(12, 12)),
            "assets/images/user-128.png")
        .then((icon) {
      currentLocationIcon = icon;
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error("location services are disabled");
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.denied) {
      return Future.error("Location permmissions are permanently denied");
    }

    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  void initState() {
    setCustomMarkerCurrentLocationIcon();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              mapToolbarEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                googleMapController = controller;
              },
              initialCameraPosition: CameraPosition(
                  target:
                      LatLng(sourceLocation.latitude, sourceLocation.longitude),
                  zoom: 9.5),
              markers: markers,
            ),
            Positioned(
              bottom: 75,
              right: 17,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        offset: Offset(2, 5)),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: mainColor,
                  radius: 28,
                  child: Material(
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: mainColor,
                    child: InkWell(
                      onTap: () {
                        userLocationOnPressed();
                      },
                      child: const Center(
                        child: Icon(Icons.my_location,
                            size: 30, color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
