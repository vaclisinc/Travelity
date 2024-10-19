import 'package:flutter/material.dart';

class PromptField extends StatelessWidget {
  const PromptField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: MyInputField(),
          ),
          SizedBox(width: 10),
          SendButton(),
        ],
      ),
    );
  }
}

class MyInputField extends StatelessWidget {
  const MyInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue, // Border color similar to the one in the image
        ),
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
      ),
      child: const Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10),
                  hintText: 'Type something or click the button...',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
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
  });

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
        onPressed: () {
          // Add your action here
        },
      ),
    );
  }
}
