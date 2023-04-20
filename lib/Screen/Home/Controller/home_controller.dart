import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends GetxController
{
  RxDouble lat = 0.0.obs;
  RxDouble log = 0.0.obs;
  // Completer<GoogleMapController> h = Completer();
  //
  // void creatMap(GoogleMapController controller) {
  //   h.complete(controller);
  // }
}