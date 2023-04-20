import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map/Screen/Home/Controller/home_controller.dart';

class LocakteScreen extends StatefulWidget {
  const LocakteScreen({Key? key}) : super(key: key);

  @override
  State<LocakteScreen> createState() => _LocakteScreenState();
}

class _LocakteScreenState extends State<LocakteScreen> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("LOCATION"),),
      body: GoogleMap(
        mapType: MapType.satellite,
      buildingsEnabled: true,
        zoomControlsEnabled: true,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
      initialCameraPosition: CameraPosition(target: LatLng(homeController.lat.value, homeController.log.value),),
      ),
    ),);
  }
}
