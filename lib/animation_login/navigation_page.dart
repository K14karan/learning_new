import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'clothes.dart';
import 'order_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ola'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
            Get.to( OrderDetailsPage(order: exampleOrder,));
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
            child: Placeholder(), // Map view placeholder
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Number of available rides
              itemBuilder: (context, index) {
                return RideCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RideCard extends StatelessWidget {
  const RideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.directions_car),
        title: const Text('Ride Title'),
        subtitle: const Text('Driver Name - Price'),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClothesCategoryPage()),
            );
          },
          child: const Text('Book'),
        ),
      ),
    );
  }
}
class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  String selectedRideType = 'Economy'; // Default ride type

  // Placeholder for pickup and drop-off locations
  LatLng pickupLocation = const LatLng(37.7749, -122.4194); // San Francisco
  LatLng dropOffLocation = const LatLng(37.3382, -121.8863); // San Jose

  late  GoogleMapController? mapController;

  @override
  void dispose() {
    mapController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book a Ride')),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: pickupLocation,
                zoom: 12,
              ),
              markers: <Marker>{
                Marker(markerId: const MarkerId('pickup'), position: pickupLocation),
                Marker(markerId: const MarkerId('dropOff'), position: dropOffLocation),
              },
              onMapCreated: (controller) {
                setState(() {
                  mapController = controller;
                });
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  DropdownButton<String>(
                    value: selectedRideType,
                    onChanged: (newValue) {
                      setState(() {
                        selectedRideType = newValue!;
                      });
                    },
                    items: ['Economy', 'Premium', 'Luxury', 'XL']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Implement ride booking logic
                      _bookRide();
                      // Calculate route, confirm booking, etc.
                    },
                    child: Text('Book $selectedRideType Ride'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _bookRide() async {
    // Calculate route using Google Directions API
    String route = await _calculateRoute(pickupLocation, dropOffLocation);

    // Simulate booking
    bool bookingSuccess = await _confirmBooking(route);

    if (bookingSuccess) {
      // Show booking success dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Booking Successful'),
            content: Text('You have successfully booked a $selectedRideType ride.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigate back to home page or ride details
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Show booking error dialog
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Booking Error'),
            content: Text('There was an error while booking the ride. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<String> _calculateRoute(LatLng origin, LatLng destination) async {
    // Replace with your actual Google Maps Directions API endpoint and API key
    const String apiKey = 'YOUR_GOOGLE_API_KEY';
    const String endpoint = 'https://maps.googleapis.com/maps/api/directions/json';

    final response = await http.get(
      Uri.parse('$endpoint?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['routes'][0]['overview_polyline']['points'];
    } else {
      throw Exception('Failed to fetch route');
    }
  }

  Future<bool> _confirmBooking(String route) async {
    // Replace with your actual booking API logic
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }

}