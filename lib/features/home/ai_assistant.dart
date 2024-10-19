import 'package:flutter/material.dart';
import 'package:travelity/features/home/widgets/prompt_field.dart';

class AIAssistantBody extends StatelessWidget {
  const AIAssistantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: Placeholder()),
        PromptField(),
      ],
    );
  }
}
