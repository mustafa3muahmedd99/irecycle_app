// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';

class PlaceOrderScreen extends StatelessWidget {
  const PlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.secondary,
      appBar: CustomAppBar(
        title: 'Place Order',
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: AppTheme.light.colorScheme.secondary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.light.colorScheme.primary),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    child: Container(
                      height: 200,
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: LatLng(45.5017, -73.5673),
                          zoom: 14,
                        ),
                        markers: {
                          Marker(
                            markerId: MarkerId('location'),
                            position: LatLng(45.5017, -73.5673),
                          ),
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: AppTheme.light.colorScheme.primary,
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                "Apartment (Avenu Viger 0)",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: AppTheme.light.colorScheme.primary,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "+20 1015287461",
                              style: TextStyle(
                                color: AppTheme.light.colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppTheme.light.colorScheme.primary),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "🚚 Delivery",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.primary,
                        ),
                      ),
                      Text(
                        "Arriving in approx. 33 mins",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: 325,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.light.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.secondary,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
