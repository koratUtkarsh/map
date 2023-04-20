import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map/Screen/Home/Controller/home_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Permission"),centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () async {
              var Status = await Permission.location.status;
              if( Status.isDenied)
              {
                Permission.location.request();
                Get.snackbar('Location', 'Scucess');
              }

            }, child: Text("Location"),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async {
              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

              homeController.lat.value = position.longitude;
              homeController.log.value = position.latitude;
            }, child: Text("Locket"),),
            Obx(() =>  Text("Lat :${homeController.lat.value}",style: TextStyle(fontSize: 30),),),
            Obx(() =>  Text("Log :${homeController.log.value}",style: TextStyle(fontSize: 30),),),
            SizedBox(height: 450),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: FloatingActionButton(onPressed: () {
                  Get.toNamed('loc');
                },child: Icon(Icons.location_on),),
              ),
            ),

          ],
        ),
      ),
    ),
    );
  }
}

