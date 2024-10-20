import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travelity/core/services/user_local_source.dart';
import 'package:travelity/features/home/home.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';
import 'package:travelity/features/introduction/setup/bio_setup.dart';
import 'package:travelity/features/introduction/setup/food_setup.dart';
import 'package:travelity/features/introduction/setup/interest_setup.dart';
import 'package:travelity/features/introduction/setup/accommodation_setup.dart';
import 'package:travelity/features/introduction/setup/personality_setup.dart';
import 'package:travelity/features/introduction/setup/trave_pace_setup.dart';
import 'package:travelity/features/introduction/setup/travel_pref_setup.dart';
import 'package:travelity/get_it.dart';
import 'package:travelity/theme.dart';

List<PageViewModel> pages = [
  PageViewModel(title: '勾選您的興趣', bodyWidget: const InterestSetup()),
  PageViewModel(title: '勾選您的個性', bodyWidget: const PersonalitySetup()),
  PageViewModel(title: '簡單地自我介紹', bodyWidget: const BioSetup()),
  PageViewModel(title: '勾選您的旅遊偏好', bodyWidget: const TravelPrefSetup()),
  PageViewModel(title: '勾選您的旅遊步調', bodyWidget: const TravelPaceSetup()),
  PageViewModel(title: '勾選您的美食愛好', bodyWidget: const FoodSetup()),
  PageViewModel(title: '勾選您的住宿偏好', bodyWidget: const AccommodationSetup()),
];

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserSetupBloc _bloc = UserSetupBloc(sl());

    return Scaffold(
      appBar: AppBar(
        title: const Text('初始設定'),
      ),
      body: BlocProvider<UserSetupBloc>(
        create: (context) => _bloc,
        child: IntroductionScreen(
            pages: pages,
            back: Text(
              '上一步',
              style: TextStyle(color: theme().primaryColor),
            ),
            done: Text(
              '完成',
              style: TextStyle(color: theme().primaryColor),
            ),
            next: Text(
              '下一步',
              style: TextStyle(color: theme().primaryColor),
            ),
            // showBackButton: true,
            isProgress: false,
            onDone: () {
              _bloc.add(const SaveUser());
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            }),
      ),
    );
  }
}
