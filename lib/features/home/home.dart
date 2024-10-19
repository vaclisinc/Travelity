import 'package:flutter/material.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/ai_assistant/ai_assistant.dart';
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
            label: '推薦行程',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'AI助理',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: '偏好設定',
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
