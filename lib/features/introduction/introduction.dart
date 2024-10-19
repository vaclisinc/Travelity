import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travelity/features/home/home.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';
import 'package:travelity/features/introduction/setup/bio_setup.dart';
import 'package:travelity/features/introduction/setup/interest_setup.dart';
import 'package:travelity/features/introduction/setup/personality_setup.dart';
import 'package:travelity/features/introduction/setup/trave_pace_setup.dart';
import 'package:travelity/features/introduction/setup/travel_pref_setup.dart';

List<PageViewModel> pages = [
  PageViewModel(title: '勾選您的興趣', bodyWidget: const InterestSetup()),
  PageViewModel(title: '勾選您的個性', bodyWidget: const PersonalitySetup()),
  PageViewModel(title: '簡單地自我介紹', bodyWidget: const BioSetup()),
  PageViewModel(title: '勾選您的旅遊偏好', bodyWidget: const TravelPrefSetup()),
  PageViewModel(title: '勾選您的旅遊步調', bodyWidget: const TravelPaceSetup()),
];

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserSetupBloc _bloc = UserSetupBloc();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
      ),
      body: BlocProvider<UserSetupBloc>(
        create: (context) => _bloc,
        child: IntroductionScreen(
          pages: pages,
          back: const Text('Back'),
          done: const Text('Done'),
          next: const Text('Next'),
          showBackButton: true,
          onDone: () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          ),
        ),
      ),
    );
  }
}
