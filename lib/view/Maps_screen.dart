// ignore: file_names
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:online_coaching/view/welcome_screen.dart';



class Maps extends StatefulWidget
{
  static const CameraPosition initialCameraPosition = CameraPosition(target:LatLng(29.9667,32.5333),zoom:13);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController googleMapController;

  Set<Marker> markers = {};

  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:const Icon(Icons.arrow_back),onPressed: ()
        {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
        },),
        title: const Text('Maps'),
        centerTitle: true,
      ),
      body:GoogleMap(initialCameraPosition: Maps.initialCameraPosition,
        markers:markers,
        zoomControlsEnabled:false,
        mapType:MapType.normal,
        onMapCreated:(GoogleMapController controller)
        {
          googleMapController= controller;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:() async {

          Position position = await _determinePosition();

          googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target:LatLng(position.latitude,position.longitude),zoom:14)));

          markers.clear();
          markers.add(Marker(markerId: const MarkerId('current Location'),position:LatLng(position.latitude, position.longitude)));

          setState(() {});

        },
        label:const Text("current Location"),
        icon:const Icon(Icons.location_history),
      ),
    );

  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(serviceEnabled != true){
      return Future.error('Location services are disabled');
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();

      if(permission == LocationPermission.denied){
        return Future.error("Location permission denied");
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error ('Location permission are permanently denied');
    }
    Position position = await Geolocator.getCurrentPosition();

    return position;

  }
}
//import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// class Maps extends StatefulWidget
// {
//   static const CameraPosition initialCameraPosition = CameraPosition(target:LatLng(30.033333,31.23334),zoom:14);
//
//   @override
//   State<Maps> createState() => _MapsState();
// }
//
// class _MapsState extends State<Maps> {
//   late GoogleMapController googleMapController;
//
//   Set<Marker> markers = {};
//
//   @override
//   Widget build (BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Maps'),
//         centerTitle: true,
//       ),
//       body:GoogleMap(initialCameraPosition: Maps.initialCameraPosition,
//         markers:markers,
//         zoomControlsEnabled:false,
//         mapType:MapType.normal,
//         onMapCreated:(GoogleMapController controller)
//         {
//           googleMapController= controller;
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed:() async {
//
//           var position = await _determinePosition();
//
//           googleMapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target:LatLng(position.latitude,position.longitude),zoom:14)));
//
//           markers.clear();
//           markers.add(Marker(markerId: const MarkerId('current Location'),position:LatLng(position.latitude, position.longitude)));
//
//           setState(() {});
//
//         },
//         label:const Text("current Location"),
//         icon:const Icon(Icons.location_history),
//       ),
//
//
//
//     );
//
//   }
//
//   Future<Position> _determinePosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if(!serviceEnabled){
//       return Future.error('Location services are disabled');
//     }
//     permission = Geolocator.checkPermission() as LocationPermission;
//
//     if(permission == LocationPermission.denied){
//       permission = await Geolocator.requestPermission();
//
//       if(permission == LocationPermission.denied){
//         return Future.error("Location permission denied");
//       }
//     }
//
//     if(permission == LocationPermission.deniedForever){
//       return Future.error ('Location permission are permanently denied');
//     }
//
//     var Position = await Geolocator.getCurrentPosition();
//
//     return Position;
//
//   }
// }
// seuz    static const CameraPosition initialCameraPosition = CameraPosition(target:LatLng(29.9667,32.5333),zoom:13);