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

class YaylaVeInancRotasiBirPage extends StatefulWidget {
  const YaylaVeInancRotasiBirPage({Key? key}) : super(key: key);

  @override
  State<YaylaVeInancRotasiBirPage> createState() =>
      _YaylaVeInancRotasiBirPageState();
}

class _YaylaVeInancRotasiBirPageState extends State<YaylaVeInancRotasiBirPage> {
  String rotaAdi = "1. Yayla ve İnanç Turizmi Rotası";
  late GoogleMapController googleMapController; //controller nesnesi

  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

//----------------------lokasyonların LatLang nesneleri-------------------------
  static LatLng sourceLocation =
  LatLng(
      Strings.latitudesLongitudes["Kardüz Yaylası"]!.first,
      Strings.latitudesLongitudes["Kardüz Yaylası"]!.last
  );
  static LatLng destination1 =
  LatLng(
      Strings.latitudesLongitudes["Pürenli Yaylası"]!.first,
      Strings.latitudesLongitudes["Pürenli Yaylası"]!.last
  );
  static LatLng destination2 =
  LatLng(
      Strings.latitudesLongitudes["Cumayeri Yeni Cami"]!.first,
      Strings.latitudesLongitudes["Cumayeri Yeni Cami"]!.last
  );
  static LatLng destination3 =
  LatLng(
      Strings.latitudesLongitudes["Eş Şeyh Aliyyü-l Müslahiddin Hazretleri"]!.first,
      Strings.latitudesLongitudes["Eş Şeyh Aliyyü-l Müslahiddin Hazretleri"]!.last
  );

//polyline' ler arası yol tarifi için gerekli olan ardışık her iki lokasyonun
// bulunduğu 2 üyelik listeler.-------------------------------------------------

  List<LatLng> polylineCoordinates1 = [];
  List<LatLng> polylineCoordinates2 = [];
  List<LatLng> polylineCoordinates3 = [];


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


  //----------------------------5. kısım----------------------------------------



//--------------------------------Markers---------------------------------------
  Set<Marker> markers = {
    Marker(
      markerId: const MarkerId("source"),
      infoWindow:
      InfoWindow(title: "01 - ${RouteStrings.yaylainancrotasi1[0]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: sourceLocation,
    ),
    Marker(
      markerId: const MarkerId("destination1"),
      infoWindow:  InfoWindow(title: "02 - ${RouteStrings.yaylainancrotasi1[1]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination1,
    ),
    Marker(
      markerId: const MarkerId("destination2"),
      infoWindow:
      InfoWindow(title: "03 - ${RouteStrings.yaylainancrotasi1[2]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination2,
    ),
    Marker(
      markerId: const MarkerId("destination3"),
      infoWindow:  InfoWindow(title: "04 - ${RouteStrings.yaylainancrotasi1[3]}"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination3,
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
            String url = """https://www.google.com/maps/dir/Kard%C3%BCz+Yaylas%C4%B1,+Bakacak%2FG%C3%B6lyaka%2FD%C3%BCzce/Ye%C4%9Fenderesi,+P%C3%BCrenli+Yaylas%C4%B1,+Ta%C5%9Fkesti%2FMudurnu%2FBolu/%C5%9Eeyh+Al%C4%B1yyil+Musl%C4%B1hiddin+Hz.leri+T%C3%BCrbesi+ve+Cami,+Yukar%C4%B1karak%C3%B6y%2F%C3%87ilimli%2FD%C3%BCzce/%C5%9Eehit+Kemal+I%C5%9F%C4%B1ldak,+Konuralp+T%C3%BCrbesi,+Kaleler+Sokak,+Konuralp+Belediyesi%2FD%C3%BCzce+Merkez%2FD%C3%BCzce/@40.8117467,30.8999823,8.86z/data=!4m26!4m25!1m5!1m1!1s0x409d7f37fa0ad5b7:0xcf7ab3acc127ef05!2m2!1d30.9774337!2d40.673729!1m5!1m1!1s0x409d7c1ba541b2fd:0xa0cdf96aaa622c7!2m2!1d31.050625!2d40.648801!1m5!1m1!1s0x409d986456ad627f:0x3c5ef28900e31fc0!2m2!1d31.0029165!2d40.8854413!1m5!1m1!1s0x409da110acfbbb83:0x55f23e892717c0d3!2m2!1d31.1477052!2d40.9051608!3e0""";
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
                height: RouteStrings.yaylainancrotasi1.length*55,
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
                                RouteStrings.yaylainancrotasi1[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                  itemCount: RouteStrings.yaylainancrotasi1.length,
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
        },
        markers: markers,
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}
