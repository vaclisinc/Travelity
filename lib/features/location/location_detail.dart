import 'package:flutter/material.dart';
import 'package:travelity/core/model/location_m.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationDetailPage extends StatelessWidget {
  const LocationDetailPage({super.key, required this.location});

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Background Image with a Text Overlay
          SizedBox(
            height: 600,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  location.imageUrl,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Text(
                    location.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.8),
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Back button functionality
                    },
                  ),
                ),
              ],
            ),
          ),

          // Bottom Sheet with Details
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.7,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '關於 ${location.name}',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          location.reason,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(height: 10),

                        Wrap(
                          spacing: 10,
                          children: [
                            ...?location.tags?.map((e) => ChoiceChip(
                                  label: Text(e),
                                  selected: true,
                                  showCheckmark: false,
                                ))
                          ],
                        ),

                        // // Rating Row
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Row(
                        //       children: const [
                        //         Icon(Icons.star, color: Colors.amber, size: 24),
                        //         Icon(Icons.star, color: Colors.amber, size: 24),
                        //         Icon(Icons.star, color: Colors.amber, size: 24),
                        //         Icon(Icons.star, color: Colors.amber, size: 24),
                        //         Icon(Icons.star_half,
                        //             color: Colors.amber, size: 24),
                        //         SizedBox(width: 8),
                        //         Text(
                        //           '4.79',
                        //           style: TextStyle(
                        //             fontSize: 16,
                        //             fontWeight: FontWeight.bold,
                        //           ),
                        //         ),
                        //         Text(
                        //           '(78 reviews)',
                        //           style: TextStyle(
                        //               fontSize: 14, color: Colors.grey),
                        //         ),
                        //       ],
                        //     ),
                        //     GestureDetector(
                        //       onTap: () {
                        //         // Navigate to reviews page
                        //       },
                        //       child: const Text(
                        //         'See reviews',
                        //         style: TextStyle(
                        //           color: Colors.blue,
                        //           fontSize: 16,
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          // Navigation Button
          Positioned(
            bottom: 50,
            child: ElevatedButton(
              onPressed: () async {
                if (await canLaunchUrl(Uri.parse(location.mapUrl))) {
                  launchUrl(Uri.parse(location.mapUrl));
                }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                '點我導航...',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
