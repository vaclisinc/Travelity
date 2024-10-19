import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';
import 'package:travelity/features/home/widgets/prompt_field.dart';
import 'package:travelity/features/location/location_preview.dart';
import 'package:travelity/get_it.dart';

class AIAssistantBody extends StatelessWidget {
  const AIAssistantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AiAssistantBloc>(
      create: (context) => sl(),
      child: Scaffold(
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
      ),
    );
  }
}
