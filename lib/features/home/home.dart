import 'package:flutter/material.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/home/ai_assistant.dart';
import 'package:travelity/features/home/profile.dart';
import 'package:travelity/features/schedule/schedule.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: switch (currentPageIndex) {
        0 => ScheduleBody(allEvents: mockEvents),
        1 => const AIAssistantBody(),
        2 => const ProfileBody(),
        _ => const Center(child: Text('Home page')),
      },
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'AI Assistant',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
