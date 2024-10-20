import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';

class PromptField extends StatefulWidget {
  const PromptField({super.key, required this.active});

  final bool active;

  @override
  State<PromptField> createState() => _PromptFieldState();
}

class _PromptFieldState extends State<PromptField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: MyInputField(active: widget.active, controller: controller),
          ),
          const SizedBox(width: 10),
          SendButton(
              active: widget.active,
              onPressed: () {
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
    this.active = true,
  });

  final bool active;
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
                readOnly: !active,
                controller: controller,
                decoration: const InputDecoration(
                  hintText: '請輸入欲旅行的地點與天數，越詳細越好...',
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
    this.active = true,
  });

  final bool active;
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
        onPressed: active ? onPressed : null,
      ),
    );
  }
}
