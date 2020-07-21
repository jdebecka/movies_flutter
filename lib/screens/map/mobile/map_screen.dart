import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:movies/models/store_locator.dart';

class MapScreenMobile extends StatefulWidget {
  @override
  _MapScreenMobileState createState() => _MapScreenMobileState();
}

class _MapScreenMobileState extends State<MapScreenMobile> {
  GoogleMapController mapController;

  final Map<String, Marker> _markers = {};

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final stores = await getStores();
    setState(() {
      _markers.clear();
      for (final store in stores.stores) {
        final marker = Marker(
          markerId: MarkerId(store.name),
          position: LatLng(store.latitude, store.longitude),
          infoWindow: InfoWindow(
            title: store.name,
            snippet: store.address.toString(),
          ),
        );
        _markers[store.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: size.height,
        width: size.width,
        child: Scaffold(
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: const LatLng(51.509865, -0.118092),
              zoom: 10,
            ),
            markers: _markers.values.toSet(),
          ),
        ),
      ),
    );
  }
}
