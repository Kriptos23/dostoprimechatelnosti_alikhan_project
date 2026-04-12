import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(42.8746, 74.5698),
    zoom: 13,
  );

  final Set<Marker> _markers = {
    const Marker(
      markerId: MarkerId('ala_too'),
      position: LatLng(42.8766, 74.6060),
      infoWindow: InfoWindow(title: 'Ala-Too Square'),
    ),
  };

  int _markerIdCounter = 1;

  void _addMarker(LatLng position) {
    final markerId = MarkerId('user_marker_$_markerIdCounter');
    _markerIdCounter++;

    setState(() {
      _markers.add(
        Marker(
          markerId: markerId,
          position: position,
          infoWindow: const InfoWindow(title: 'Custom marker'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: true,
        markers: _markers,
        onTap: _addMarker,
      ),
    );
  }
}