import 'package:flutter/material.dart';
import 'package:travelity/features/home/home.dart';
import 'package:travelity/features/introduction/introduction.dart';
import 'package:travelity/get_it.dart';
import 'package:travelity/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      title: 'Travelity',
      theme: theme(),
      home: const IntroductionPage(),
      // home: const HomePage(),
    );
  }
}
