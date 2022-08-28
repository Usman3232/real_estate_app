import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/utils/size_config.dart';

class Discover extends StatelessWidget {
  const Discover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        // body: Container(
        //   height: SizeConfig.heightMultiplier * 100,
        //   width: SizeConfig.widthMultiplier * 100,
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         bottom: 0,
        //         child: Container(
        //           height: SizeConfig.heightMultiplier * 100,
        //           width: SizeConfig.widthMultiplier * 100,
        //           child: GoogleMap(
        //             initialCameraPosition: CameraPosition(
        //                 target: LatLng(28.4212, 70.2989), zoom: 100),
        //             myLocationButtonEnabled: true,
        //             myLocationEnabled: true,
        //             mapType: MapType.normal,
        //             trafficEnabled: true,
        //             zoomControlsEnabled: false,
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         top: 10,
        //         child: TextField(
        //           decoration: InputDecoration(
        //               prefixIcon: Icon(
        //                 Icons.add,
        //                 color: Colors.black26,
        //               ),
        //               suffixIcon: Icon(
        //                 Icons.camera_alt_outlined,
        //                 color: Colors.black,
        //               ),
        //               hintText: 'Write a reply...',
        //               hintStyle: TextStyle(color: Colors.black26),
        //               filled: true,
        //               enabledBorder: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(16),
        //                   borderSide: BorderSide(color: Colors.transparent)),
        //               focusedBorder: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(16),
        //                   borderSide: BorderSide(color: Colors.transparent)),
        //               fillColor: Colors.black12),
        //         ),
        //       )
        //     ],
        //   ),
        // )
        );
  }
}
