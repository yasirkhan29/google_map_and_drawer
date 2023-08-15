import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ConvertLatiangToAddress extends StatefulWidget {
  const ConvertLatiangToAddress({super.key});

  @override
  State<ConvertLatiangToAddress> createState() =>
      _ConvertLatiangToAddressState();
}

class _ConvertLatiangToAddressState extends State<ConvertLatiangToAddress> {
  // pass string
  String stAddress = '', stAdd = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stAddress),
          Text(stAdd),
          GestureDetector(
            onTap: () async {
              // coordindate to address and address to coordinate
              List<Location> locations =
                  await locationFromAddress("Gronausestraat 710, Enschede");
              List<Placemark> placemarks =
                  await placemarkFromCoordinates(52.2165157, 6.9437819);

              setState(() {
                stAddress = locations.last.longitude.toString() +
                    " " +
                    locations.last.longitude.toString();
                stAdd = placemarks.reversed.last.country.toString() +
                    "" +
                    placemarks.reversed.last.locality.toString();
              });
// From a query
              // final query = " Mountain View";
              // var addresses =
              //     await Geocoder.local.findAddressesFromQuery(query);
              // var second = addresses.first;
              // print("${second.featureName} : ${second.coordinates}");

              // final coordinates = new Coordinates(33.6992, 72.9744);
              // var address = await Geocoder.local
              //     .findAddressesFromCoordinates(coordinates);
              // var first = address.first;
              // print(
              //     first.featureName.toString() + first.addressLine.toString());
              // setState(() {
              //   stAddress = first.addressLine.toString();
              // });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text("Convert"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
