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

class DenizVeInancRotasiUcPage extends StatefulWidget {
  const DenizVeInancRotasiUcPage({Key? key}) : super(key: key);

  @override
  State<DenizVeInancRotasiUcPage> createState() =>
      _DenizVeInancRotasiUcPageState();
}

class _DenizVeInancRotasiUcPageState extends State<DenizVeInancRotasiUcPage> {
  String rotaAdi = "3. Deniz ve Inanç Turizmi Rotası";
  late GoogleMapController googleMapController; //controller nesnesi

  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

//----------------------lokasyonların LatLang nesneleri-------------------------
  static LatLng sourceLocation =
  LatLng(
      Strings.latitudesLongitudes["Ahmet Dede Türbesi"]!.first,
      Strings.latitudesLongitudes["Ahmet Dede Türbesi"]!.last
  );
  static LatLng destination1 =
  LatLng(
      Strings.latitudesLongitudes["Çuhallı Plajı"]!.first,
      Strings.latitudesLongitudes["Çuhallı Plajı"]!.last
  );
  static LatLng destination2 =
  LatLng(
      Strings.latitudesLongitudes["Akçakoca Merkez Cami"]!.first,
      Strings.latitudesLongitudes["Akçakoca Merkez Cami"]!.last
  );
  static LatLng destination3 =
  LatLng(
      Strings.latitudesLongitudes["Ceneviz Kalesi Plajı"]!.first,
      Strings.latitudesLongitudes["Ceneviz Kalesi Plajı"]!.last
  );
  static LatLng destination4 =
  LatLng(
      Strings.latitudesLongitudes["Kalkın Plajı"]!.first,
      Strings.latitudesLongitudes["Kalkın Plajı"]!.last
  );

//polyline' ler arası yol tarifi için gerekli olan ardışık her iki lokasyonun
// bulunduğu 2 üyelik listeler.-------------------------------------------------

  List<LatLng> polylineCoordinates1 = [];
  List<LatLng> polylineCoordinates2 = [];
  List<LatLng> polylineCoordinates3 = [];
  List<LatLng> polylineCoordinates4 = [];

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
    PolylineResult result3 = await polylinePoints4.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(destination3.latitude, destination3.longitude),
      PointLatLng(destination4.latitude, destination4.longitude),
    );

    if (result3.points.isNotEmpty) {
      result3.points.forEach((PointLatLng point) =>
          polylineCoordinates4.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  //----------------------------5. kısım----------------------------------------



//--------------------------------Markers---------------------------------------
  Set<Marker> markers = {
    Marker(
      markerId: const MarkerId("source"),
      infoWindow:
      InfoWindow(title: "01 - ${RouteStrings.denizinancrotasi3[0]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: sourceLocation,
    ),
    Marker(
      markerId: const MarkerId("destination1"),
      infoWindow:  InfoWindow(title: "02 - ${RouteStrings.denizinancrotasi3[1]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination1,
    ),
    Marker(
      markerId: const MarkerId("destination2"),
      infoWindow:
      InfoWindow(title: "03 - ${RouteStrings.denizinancrotasi3[2]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination2,
    ),
    Marker(
      markerId: const MarkerId("destination3"),
      infoWindow:  InfoWindow(title: "04 - ${RouteStrings.denizinancrotasi3[3]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination3,
    ),
    Marker(
      markerId: const MarkerId("destination4"),
      infoWindow:  InfoWindow(title: "05 - ${RouteStrings.denizinancrotasi3[4]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination4,
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
            String url = """https://www.google.com/maps/dir/Ahmet+Dede+T%C3%BCrbesi+Yolu,+Kepen%C3%A7%2FAk%C3%A7akoca%2FD%C3%BCzce/Ayazl%C4%B1,+%C3%87uhall%C4%B1+Plaj%C4%B1,+Ak%C3%A7akoca+Meteroloji,+Ak%C3%A7akoca%2FD%C3%BCzce/Yal%C4%B1,+Ak%C3%A7akoca+Merkez+Camii,+Plaj+Sokak,+Ak%C3%A7akoca%2FD%C3%BCzce/Hac%C4%B1+Yusuflar,+Ceneviz+Kalesi+Ve+Sahil+Plaj%C4%B1,+Ak%C3%A7akoca%2FD%C3%BCzce/Kalk%C4%B1n+Plaj%C4%B1,+Kalk%C4%B1n%2FAk%C3%A7akoca%2FD%C3%BCzce/@41.0802718,31.0596014,13z/data=!3m1!4b1!4m32!4m31!1m5!1m1!1s0x409db10b42a15baf:0x2aa55a146c8af4c6!2m2!1d31.1059851!2d41.0704699!1m5!1m1!1s0x409db23252f27a7d:0x2e893bd5024683c3!2m2!1d31.1424491!2d41.0899078!1m5!1m1!1s0x409db3d6d09ee9b1:0xd584b0edac634c7c!2m2!1d31.124711!2d41.0887617!1m5!1m1!1s0x409db15cbd2d9545:0x8282ce8e82f86931!2m2!1d31.0931014!2d41.0856934!1m5!1m1!1s0x409db6d72d28c085:0x429819f610f80782!2m2!1d31.0439755!2d41.0760216!3e0""";
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
                height: RouteStrings.denizinancrotasi3.length*55,
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
                                RouteStrings.denizinancrotasi3[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                  itemCount: RouteStrings.denizinancrotasi3.length,
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
        },
        markers: markers,
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}
