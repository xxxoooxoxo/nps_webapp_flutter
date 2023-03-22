import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nps_webapp/routing/routes.dart';
import 'package:nps_webapp/views/overview/widgets/alpha_node_view.dart';

import '../constants/controllers.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _mapController = Completer<GoogleMapController>();
  late Marker _charlottesvilleMarker;
  late Marker _newyorkMarker;
  late String _mapStyle;

  @override
  void initState() {
    super.initState();
    _loadMapStyle();
    _charlottesvilleMarker = Marker(
      markerId: const MarkerId('charlottesville'),
      position: const LatLng(38.029306, -78.476678),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: InfoWindow(
        title: 'Charlottesville, VA',
        snippet: 'BigDot Node',
        onTap: _onInfoWindowTapped,
      ),
    );
    _newyorkMarker = Marker(
        markerId: const MarkerId('newyork'),
        position: const LatLng(40.7128, -74.0060),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(
          title: 'New York City, NY',
          snippet: 'PurpleAir Node',
          onTap: _onInfoWindowTapped,
        ));
  }

  Future<void> _loadMapStyle() async {
    _mapStyle = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    final controller = await _mapController.future;
    controller.setMapStyle(_mapStyle);
  }

  void _onInfoWindowTapped() {
    navigationController.navigateTo(alphaPageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        target: LatLng(38.029306, -78.476678),
        zoom: 4.0,
      ),
      markers: {_charlottesvilleMarker, _newyorkMarker},
      mapType: MapType.none,
      minMaxZoomPreference: const MinMaxZoomPreference(2, 20),
      onMapCreated: (GoogleMapController controller) {
        controller.setMapStyle(_mapStyle);
        _mapController.complete(controller);
      },
    );
  }
}
