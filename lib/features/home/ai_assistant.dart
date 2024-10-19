import 'package:flutter/material.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/home/widgets/prompt_field.dart';
import 'package:travelity/features/location/location_preview.dart';

class AIAssistantBody extends StatelessWidget {
  const AIAssistantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI助理'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: LocationPreview(location: mockLocations[0])),
          ),
          const PromptField(),
        ],
      ),
    );
  }
}
