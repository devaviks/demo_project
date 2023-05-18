import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'location_controller.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocationController>(
        init: LocationController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.06,
                            left: MediaQuery.of(context).size.height * 0.02,
                            right: MediaQuery.of(context).size.height * 0.02,
                            bottom: MediaQuery.of(context).size.height * 0.02,
                          ),
                          child: Text(
                            controller.currentLocation == null
                                ? 'No Address Found'
                                : controller.currentLocation!,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                await controller.getCurrentLocation();
              },
              child: const Icon(Icons.location_on_rounded),
            ),
          );
        });
  }
}
