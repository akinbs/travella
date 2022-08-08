
// ignore_for_file: must_be_immutable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/information_page/constants.dart';
import 'package:url_launcher/url_launcher.dart';


class GetLocationInGoogleMaps extends StatefulWidget {
  String locationName;

   GetLocationInGoogleMaps(
      {
        Key? key,
        required this.locationName,

      }) : super(key: key);
  @override
  State<GetLocationInGoogleMaps> createState() => _GetLocationInGoogleMapsState();
}

class _GetLocationInGoogleMapsState extends State<GetLocationInGoogleMaps> {

  late String locationName_ = widget.locationName;
  late GoogleMapController googleMapController; //controller nesnesi
  Set markers = {};

  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;


//-------------------------User Location----------------------------------------

  SpeedDial buildFloatingActionButton() {
    return SpeedDial(
      backgroundColor: mainColor,
      animatedIcon: AnimatedIcons.menu_close,
      overlayColor: Colors.black,
      overlayOpacity: 0.4,
      spacing: 12,
      spaceBetweenChildren: 12,
      children: [
        SpeedDialChild(
          label: "Konumunu göster",
          onTap: userLocationOnPressed,
          child: Icon(Icons.my_location),
        ),
        SpeedDialChild(
          label: "Bu yerin yol tarifine git",
          onTap: () async {
            String url = Strings.googleMapsUrls[widget.locationName]!;
            if (await canLaunch(url)) {
              await launch(
                url,
                /*
                forceWebView: false, //android için app içinde açma ayarı.
                enableDomStorage: true,
                enableJavaScript: true,
                */
              );
            } else {
              print(
                  "*************the action is not spported. (no browser app)***************");
            }
          },
          child: const Icon(Icons.map),
        )
      ],
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

//----------------------------initState-build-----------------------------------
  @override
  void initState() {
    setCustomMarkerCurrentLocationIcon();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.locationName,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: mainColor,
        shadowColor: Colors.grey,
      ),
      body: GoogleMap(
        mapToolbarEnabled: false,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
        initialCameraPosition: CameraPosition(
            target: LatLng(Strings.latitudesLongitudes[widget.locationName]!.first, Strings.latitudesLongitudes[widget.locationName]!.last),
            zoom: 10.5),
        markers: {
          ...markers,
          Marker(
            markerId: const MarkerId("source"),
            infoWindow:  InfoWindow(title: widget.locationName),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            position: LatLng(Strings.latitudesLongitudes[widget.locationName]!.first, Strings.latitudesLongitudes[widget.locationName]!.last),
          ),
        },
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}