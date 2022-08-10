import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:travella_01/data/route_strings.dart';
import 'package:travella_01/data/strings.dart';
import 'package:travella_01/google_maps/constants.dart';
import 'package:travella_01/information_page/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DogaVeDenizRotasiIkiPage extends StatefulWidget {
  const DogaVeDenizRotasiIkiPage({Key? key}) : super(key: key);

  @override
  State<DogaVeDenizRotasiIkiPage> createState() =>
      _DogaVeDenizRotasiIkiPageState();
}

class _DogaVeDenizRotasiIkiPageState extends State<DogaVeDenizRotasiIkiPage> {
  String rotaAdi = "2. Doğa ve Deniz Turizmi Rotası";
  late GoogleMapController googleMapController; //controller nesnesi

  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

//----------------------lokasyonların LatLang nesneleri-------------------------
  static LatLng sourceLocation =
  LatLng(
      Strings.latitudesLongitudes["Efteni Gölü"]!.first,
      Strings.latitudesLongitudes["Efteni Gölü"]!.last
  );
  static LatLng destination1 =
  LatLng(
      Strings.latitudesLongitudes["Gölyaka Kültür Parkı"]!.first,
      Strings.latitudesLongitudes["Gölyaka Kültür Parkı"]!.last
  );
  static LatLng destination2 =
  LatLng(
      Strings.latitudesLongitudes["Harmankaya Şelalesi"]!.first,
      Strings.latitudesLongitudes["Harmankaya Şelalesi"]!.last
  );
  static LatLng destination3 =
  LatLng(
      Strings.latitudesLongitudes["Aktaş Şelalesi"]!.first,
      Strings.latitudesLongitudes["Aktaş Şelalesi"]!.last
  );
  static LatLng destination4 =
  LatLng(
      Strings.latitudesLongitudes["Kurugöl Kanyonu"]!.first,
      Strings.latitudesLongitudes["Kurugöl Kanyonu"]!.last
  );
  static LatLng destination5 =
  LatLng(
      Strings.latitudesLongitudes["Kalkın Plajı"]!.first,
      Strings.latitudesLongitudes["Kalkın Plajı"]!.last
  );
  static LatLng destination6 =
  LatLng(
      Strings.latitudesLongitudes["Paşalar Plajı"]!.first,
      Strings.latitudesLongitudes["Paşalar Plajı"]!.last
  );
  static LatLng destination7 =
  LatLng(
      Strings.latitudesLongitudes["Melenağzı Plajı"]!.first,
      Strings.latitudesLongitudes["Melenağzı Plajı"]!.last
  );


//polyline' ler arası yol tarifi için gerekli olan ardışık her iki lokasyonun
// bulunduğu 2 üyelik listeler.-------------------------------------------------

  List<LatLng> polylineCoordinates1 = [];
  List<LatLng> polylineCoordinates2 = [];
  List<LatLng> polylineCoordinates3 = [];
  List<LatLng> polylineCoordinates4 = [];
  List<LatLng> polylineCoordinates5 = [];
  List<LatLng> polylineCoordinates6 = [];
  List<LatLng> polylineCoordinates7 = [];

//----------------------------1. kısım------------------------------------------

  Future<void> getPolyPoints1() async {
    PolylinePoints polylinePoints1 = PolylinePoints();
    PolylineResult result1 = await polylinePoints1.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination1.latitude, destination1.longitude),
    );

    if (result1.points.isNotEmpty) {
      result1.points.forEach((PointLatLng point) =>
          polylineCoordinates1.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

//----------------------------2. kısım----------------------------------------
  Future<void> getPolyPoints2() async {
    PolylinePoints polylinePoints2 = PolylinePoints();
    PolylineResult result2 = await polylinePoints2.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination1.latitude, destination1.longitude),
      PointLatLng(destination2.latitude, destination2.longitude),
    );

    if (result2.points.isNotEmpty) {
      result2.points.forEach((PointLatLng point) =>
          polylineCoordinates2.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  //----------------------------3. kısım----------------------------------------
  Future<void> getPolyPoints3() async {
    PolylinePoints polylinePoints3 = PolylinePoints();
    PolylineResult result3 = await polylinePoints3.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination2.latitude, destination2.longitude),
      PointLatLng(destination3.latitude, destination3.longitude),
    );

    if (result3.points.isNotEmpty) {
      result3.points.forEach((PointLatLng point) =>
          polylineCoordinates3.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  //----------------------------4. kısım----------------------------------------
  Future<void> getPolyPoints4() async {
    PolylinePoints polylinePoints4 = PolylinePoints();
    PolylineResult result4 = await polylinePoints4.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination3.latitude, destination3.longitude),
      PointLatLng(destination4.latitude, destination4.longitude),
    );

    if (result4.points.isNotEmpty) {
      result4.points.forEach((PointLatLng point) =>
          polylineCoordinates4.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  //----------------------------5. kısım----------------------------------------
  Future<void> getPolyPoints5() async {
    PolylinePoints polylinePoints4 = PolylinePoints();
    PolylineResult result5 = await polylinePoints4.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination4.latitude, destination4.longitude),
      PointLatLng(destination5.latitude, destination5.longitude),
    );

    if (result5.points.isNotEmpty) {
      result5.points.forEach((PointLatLng point) =>
          polylineCoordinates5.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }
//----------------------------6. kısım----------------------------------------
  Future<void> getPolyPoints6() async {
    PolylinePoints polylinePoints5 = PolylinePoints();
    PolylineResult result6 = await polylinePoints5.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination5.latitude, destination5.longitude),
      PointLatLng(destination6.latitude, destination6.longitude),
    );

    if (result6.points.isNotEmpty) {
      result6.points.forEach((PointLatLng point) =>
          polylineCoordinates6.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  Future<void> getPolyPoints7() async {
    PolylinePoints polylinePoints5 = PolylinePoints();
    PolylineResult result6 = await polylinePoints5.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination6.latitude, destination6.longitude),
      PointLatLng(destination7.latitude, destination7.longitude),
    );

    if (result6.points.isNotEmpty) {
      result6.points.forEach((PointLatLng point) =>
          polylineCoordinates7.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }


//--------------------------------Markers---------------------------------------
  Set<Marker> markers = {
    Marker(
      markerId: const MarkerId("source"),
      infoWindow:
      InfoWindow(title: "01 - ${RouteStrings.dogadenizrotasi2[0]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: sourceLocation,
    ),
    Marker(
      markerId: const MarkerId("destination1"),
      infoWindow:  InfoWindow(title: "02 - ${RouteStrings.dogadenizrotasi2[1]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination1,
    ),
    Marker(
      markerId: const MarkerId("destination2"),
      infoWindow:
      InfoWindow(title: "03 - ${RouteStrings.dogadenizrotasi2[2]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination2,
    ),
    Marker(
      markerId: const MarkerId("destination3"),
      infoWindow:  InfoWindow(title: "04 - ${RouteStrings.dogadenizrotasi2[3]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination3,
    ),
    Marker(
      markerId: const MarkerId("destination4"),
      infoWindow:  InfoWindow(title: "05 - ${RouteStrings.dogadenizrotasi2[4]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination4,
    ),
    Marker(
      markerId: const MarkerId("destination5"),
      infoWindow:  InfoWindow(title: "06 - ${RouteStrings.dogadenizrotasi2[5]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination5,
    ),
    Marker(
      markerId: const MarkerId("destination6"),
      infoWindow:  InfoWindow(title: "07 - ${RouteStrings.dogadenizrotasi2[6]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination6,
    ),
    Marker(
      markerId: const MarkerId("destination7"),
      infoWindow:  InfoWindow(title: "08 - ${RouteStrings.dogadenizrotasi2[7]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination7,
    ),
  };

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
          label: "Konumun",
          onTap: userLocationOnPressed,
          child: Icon(Icons.my_location),
        ),
        SpeedDialChild(
          label: "Rotanın gezi durakları",
          onTap: () => showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => buildSheet(),
          ),
          child: Icon(Icons.format_list_numbered_rounded),
        ),
        SpeedDialChild(
          label: "Rotanın yol tarifi",
          onTap: () async {
            String url = """https://www.google.com/maps/dir/Efteni+G%C3%B6l%C3%BC+%C4%B0skele,+Melen+G%C3%B6l%C3%BC,,+D%C3%BCzce+Merkez%2FD%C3%BCzce/Fatih,+G%C3%B6lyaka+K%C3%BClt%C3%BCr+park,+G%C3%B6lyaka%2FD%C3%BCzce/Harmankaya+%C5%9Eelalesi,+Esentepe%2FCumayeri%2FD%C3%BCzce/Akta%C5%9F+%C5%9Eelalesi,+Akta%C5%9F+%C5%9Eelalesi,+Hem%C5%9Fin%2FAk%C3%A7akoca%2FD%C3%BCzce/Kurug%C3%B6l,+Kayadibi,+Kurug%C3%B6l%2FAk%C3%A7akoca%2FD%C3%BCzce/Kalk%C4%B1n+Plaj%C4%B1,+Kalk%C4%B1n%2FAk%C3%A7akoca%2FD%C3%BCzce/Pa%C5%9Falar+plaj%C4%B1,+Karaburun,+Hasan%C3%A7avu%C5%9F%2FAk%C3%A7akoca%2FD%C3%BCzce/Melena%C4%9Fz%C4%B1+Plaj%C4%B1,+Karaburun,+Karasu+%C5%9Eile+Yolu,+Melena%C4%9Fz%C4%B1%2FAk%C3%A7akoca%2FD%C3%BCzce/@40.9183206,30.8770105,11z/data=!3m1!4b1!4m50!4m49!1m5!1m1!1s0x409d9d60c66bf297:0x9b5ac2dffbf598e0!2m2!1d31.0405364!2d40.7577!1m5!1m1!1s0x409d9daa0ceb2ddf:0x2096a6cdd3218cb8!2m2!1d31.0194482!2d40.7814663!1m5!1m1!1s0x409dbdc8a9591007:0x8a9377c8aa4f027b!2m2!1d30.926053!2d40.949832!1m5!1m1!1s0x409dba5fc22c0a73:0x4011829b4c09e444!2m2!1d31.0432037!2d41.0147735!1m5!1m1!1s0x409dbaa5cf2c4afd:0x1b91da18dd1a5dd6!2m2!1d31.090663!2d41.015764!1m5!1m1!1s0x409db6d72d28c085:0x429819f610f80782!2m2!1d31.0439755!2d41.0760216!1m5!1m1!1s0x409db7201de21e51:0x75d87e73e1e3aad2!2m2!1d31.0253469!2d41.0758085!1m5!1m1!1s0x409db797b2bfdecf:0x2d3df3e383947c8f!2m2!1d30.9701461!2d41.0730108!3e0""";
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

//----------------------------location list-------------------------------------

  Widget makeDismissable({required Widget child}) => GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(
      onTap: () {},
      child: child,
    ),
  );

  Widget buildSheet() {
    return makeDismissable(
      child: DraggableScrollableSheet(
        minChildSize: 0.5,
        maxChildSize: 0.9,
        initialChildSize: 0.7,
        builder: (context, scrollController) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(defaultBorderRadius),
            ),
          ),
          padding: const EdgeInsets.fromLTRB(defaultPadding,
              defaultPadding * 1.5, defaultPadding, defaultPadding),
          child: Column(
            children: [
              Container(
                height: RouteStrings.dogadenizrotasi2.length*55,
                width: double.maxFinite,
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        decoration: BoxDecoration(
                            border: BorderDirectional(
                              bottom:
                              BorderSide(color: Colors.grey.shade300, width: 1),
                            )),
                        child: Padding(
                          padding:
                          EdgeInsets.only(left: 5, top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  "${index + 1}.",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                              Text(
                                RouteStrings.dogadenizrotasi2[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                  itemCount: RouteStrings.dogadenizrotasi2.length,
                  //DetailedInformationText(locationName: widget.selectedPlace.mekanIsmi),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: mainColor),
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("Kapat")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//----------------------------initState-build-----------------------------------
  @override
  void initState() {
    setCustomMarkerCurrentLocationIcon();
    getPolyPoints1();
    getPolyPoints2();
    getPolyPoints3();
    getPolyPoints4();
    getPolyPoints5();
    getPolyPoints6();
    getPolyPoints7();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          rotaAdi,
          style: TextStyle(color: Colors.white, fontSize: 20),
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
            target: LatLng(sourceLocation.latitude, sourceLocation.longitude),
            zoom: 10.5),
        polylines: {
          Polyline(
            polylineId: const PolylineId("route1"),
            points: polylineCoordinates1,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route2"),
            points: polylineCoordinates2,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route3"),
            points: polylineCoordinates3,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route4"),
            points: polylineCoordinates4,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route5"),
            points: polylineCoordinates5,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route6"),
            points: polylineCoordinates6,
            color: pirimaryColor,
            width: 6,
          ),
          Polyline(
            polylineId: const PolylineId("route7"),
            points: polylineCoordinates7,
            color: pirimaryColor,
            width: 6,
          ),
        },
        markers: markers,
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}
