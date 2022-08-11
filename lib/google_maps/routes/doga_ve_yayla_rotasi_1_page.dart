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

class DogaVeYaylaRotasiBirPage extends StatefulWidget {
  const DogaVeYaylaRotasiBirPage({Key? key}) : super(key: key);

  @override
  State<DogaVeYaylaRotasiBirPage> createState() =>
      _DogaVeYaylaRotasiBirPageState();
}

class _DogaVeYaylaRotasiBirPageState extends State<DogaVeYaylaRotasiBirPage> {
  String rotaAdi = "1 . Doğa ve Yayla Turizmi Rotası";
  late GoogleMapController googleMapController; //controller nesnesi

  //User Location Icon başlatıyorum,
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

//----------------------lokasyonların LatLang nesneleri-------------------------
  static LatLng sourceLocation = LatLng(
      Strings.latitudesLongitudes["Güzeldere Şelalesi"]!.first,
      Strings.latitudesLongitudes["Güzeldere Şelalesi"]!.last
  );
  static LatLng destination1 =
      LatLng(
          Strings.latitudesLongitudes["Kardüz Yaylası"]!.first,
          Strings.latitudesLongitudes["Kardüz Yaylası"]!.last
      );
  static LatLng destination2 =
      LatLng(
          Strings.latitudesLongitudes["Efteni Gölü"]!.first,
          Strings.latitudesLongitudes["Efteni Gölü"]!.last
      );
  static LatLng destination3 =
      LatLng(
          Strings.latitudesLongitudes["Gölyaka Kültür Parkı"]!.first,
          Strings.latitudesLongitudes["Gölyaka Kültür Parkı"]!.last
      );
  static LatLng destination4 =
      LatLng(
          Strings.latitudesLongitudes["Aydınpınar Şelalesi"]!.first,
          Strings.latitudesLongitudes["Aydınpınar Şelalesi"]!.last
      );
  static LatLng destination5 =
      LatLng(
          Strings.latitudesLongitudes["Derebalık Yaylası"]!.first,
          Strings.latitudesLongitudes["Derebalık Yaylası"]!.last
      );

//polyline' ler arası yol tarifi için gerekli olan ardışık her iki lokasyonun
// bulunduğu 2 üyelik listeler.-------------------------------------------------

  List<LatLng> polylineCoordinates1 = [];
  List<LatLng> polylineCoordinates2 = [];
  List<LatLng> polylineCoordinates3 = [];
  List<LatLng> polylineCoordinates4 = [];
  List<LatLng> polylineCoordinates5 = [];


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
    PolylinePoints polylinePoints5 = PolylinePoints();
    PolylineResult result5 = await polylinePoints5.getRouteBetweenCoordinates(
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



//--------------------------------Markers---------------------------------------
  Set<Marker> markers = {
    Marker(
      markerId: const MarkerId("source"),
      infoWindow:
          const InfoWindow(title: "01 - Güzeldere Şelalesi"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: sourceLocation,
    ),
    Marker(
      markerId: const MarkerId("destination1"),
      infoWindow: const InfoWindow(title: "02 - Karduz Yaylası"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination1,
    ),
    Marker(
      markerId: const MarkerId("destination2"),
      infoWindow:
          const InfoWindow(title: "03 - Efteni Gölü"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination2,
    ),
    Marker(
      markerId: const MarkerId("destination3"),
      infoWindow: const InfoWindow(title: "04 - Gölyaka Kültür Parkı"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination3,
    ),
    Marker(
      markerId: const MarkerId("destination4"),
      infoWindow: const InfoWindow(title: "05 - Aydınpınar Şelalesi"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination4,
    ),
    Marker(
      markerId: const MarkerId("destination5"),
      infoWindow: const InfoWindow(title: "06 - Derebalık Yaylası"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: destination5,
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
            String url = """https://www.google.com/maps/dir/Deli+Mehmet,+G%C3%BCzeldere+%C5%9Eelalesi+Tabiat+Park%C4%B1,+G%C3%BCzeldere%2FG%C3%B6lyaka%2FD%C3%BCzce/Kard%C3%BCz+Yaylas%C4%B1,+Unnamed+Road,+81800+G%C3%B6lyaka%2FD%C3%BCzce/Cevizlik,+Efteni+G%C3%B6l%C3%BC+%C4%B0skele,+Hamam%C3%BCst%C3%BC%2FD%C3%BCzce+Merkez%2FD%C3%BCzce/Fatih,+G%C3%B6lyaka+K%C3%BClt%C3%BCr+park,+G%C3%B6lyaka%2FD%C3%BCzce/Y%C4%B1lankaya,+Ayd%C4%B1np%C4%B1nar+%C5%9Eelalesi+Tabiat+Park%C4%B1,+Ayd%C4%B1np%C4%B1nar%2FD%C3%BCzce+Merkez%2FD%C3%BCzce/Derebal%C4%B1k+Yaylas%C4%B1,+Elmac%C4%B1kdere%2FD%C3%BCzce+Merkez%2FD%C3%BCzce/@40.727906,30.9353165,11z/data=!3m1!4b1!4m38!4m37!1m5!1m1!1s0x409d783a58896def:0xe38979f13fbcaa5e!2m2!1d31.0498648!2d40.7234091!1m5!1m1!1s0x409d7f37fa0ad5b7:0xcf7ab3acc127ef05!2m2!1d30.9774337!2d40.673729!1m5!1m1!1s0x409d9d60c66bf297:0x9b5ac2dffbf598e0!2m2!1d31.0405364!2d40.7577!1m5!1m1!1s0x409d9daa0ceb2ddf:0x2096a6cdd3218cb8!2m2!1d31.0194482!2d40.7814663!1m5!1m1!1s0x409d7707ac85ac59:0xe7c262cd835b53aa!2m2!1d31.1020181!2d40.7473082!1m5!1m1!1s0x409d7eb32030235d:0xa08fbf41703be48a!2m2!1d31.0958206!2d40.6808324!3e0""";
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
        initialChildSize: 0.8,
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
                height: RouteStrings.dogayaylarotasi1.length*55,
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
                                RouteStrings.dogayaylarotasi1[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey.shade900,
                                ),
                              ),
                            ],
                          ),
                        ));
                  },
                  itemCount: RouteStrings.dogayaylarotasi1.length,
                  //DetailedInformationText(locationName: widget.selectedPlace.mekanIsmi),
                ),
              ),
              //SizedBox(height: 100,),
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
        },
        markers: markers,
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }
}
