import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';

class PromptField extends StatefulWidget {
  const PromptField({super.key});

  @override
  State<PromptField> createState() => _PromptFieldState();
}

class _PromptFieldState extends State<PromptField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: MyInputField(controller: controller),
          ),
          const SizedBox(width: 10),
          SendButton(onPressed: () {
            context
                .read<AiAssistantBloc>()
                .add(RequestRecommendation(userPrompt: controller.text));
          })
        ],
      ),
    );
  }
}

class MyInputField extends StatelessWidget {
  const MyInputField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color similar to the one in the image
        ),
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: '請輸入您想規劃什麼行程...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue, // Background color for the circular button
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: const Icon(
          Icons.send, // Play button icon
          color: Colors.white, // Icon color
        ),
        onPressed: onPressed,
      ),
    );
  }
}
