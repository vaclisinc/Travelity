import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/core/model/user_m.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';
import 'package:travelity/features/introduction/setup/accommodation_setup.dart';
import 'package:travelity/features/introduction/setup/bio_setup.dart';
import 'package:travelity/features/introduction/setup/food_setup.dart';
import 'package:travelity/features/introduction/setup/interest_setup.dart';
import 'package:travelity/features/introduction/setup/personality_setup.dart';
import 'package:travelity/features/introduction/setup/trave_pace_setup.dart';
import 'package:travelity/features/introduction/setup/travel_pref_setup.dart';
import 'package:travelity/get_it.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocProvider<UserSetupBloc>(
        create: (context) => sl()..add(const LoadInitUser()),
        child: Builder(builder: (context) {
          return Scaffold(
              body: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subtitle(title: '簡介'),
                    BioSetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '興趣'),
                    InterestSetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '個性'),
                    PersonalitySetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '旅遊偏好'),
                    TravelPrefSetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '旅遊步調'),
                    TravelPaceSetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '飲食'),
                    FoodSetup(),
                    SizedBox(height: 16),
                    Subtitle(title: '居住'),
                    AccommodationSetup(),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  context.read<UserSetupBloc>().add(const SaveUser());
                },
                child: const Icon(Icons.save),
              ));
        }),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold));
  }
}
