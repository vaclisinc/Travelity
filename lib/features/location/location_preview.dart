import 'package:flutter/material.dart';
import 'package:travelity/core/model/location_m.dart';

class LocationPreview extends StatelessWidget {
  const LocationPreview({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              width: 150,
              height: 150,
              location.imageUrl,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  location.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  location.description,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
