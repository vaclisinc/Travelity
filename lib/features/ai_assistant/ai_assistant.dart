import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';
import 'package:travelity/features/ai_assistant/widgets/hint.dart';
import 'package:travelity/features/home/widgets/prompt_field.dart';
import 'package:travelity/features/location/location_preview.dart';
import 'package:travelity/get_it.dart';

class AIAssistantBody extends StatelessWidget {
  const AIAssistantBody({super.key, this.onChangePage});

  final Function(int)? onChangePage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AiAssistantBloc>(
      create: (context) => sl(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AI助理'),
        ),
        body: BlocBuilder<AiAssistantBloc, AiAssistantState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: BlocBuilder<AiAssistantBloc, AiAssistantState>(
                    buildWhen: (previous, current) =>
                        current is RecommendationLoading ||
                        current is RecommendationLoaded,
                    builder: (context, state) {
                      if (state is RecommendationLoading) {
                        return SingleChildScrollView(
                            child: Column(children: [
                          ...?state.scenery?.map((e) {
                            return LocationPreview(location: e);
                          }),
                          ...?state.food?.map((e) {
                            return LocationPreview(location: e);
                          }),
                          ...?state.accommodation?.map((e) {
                            return LocationPreview(location: e);
                          }),
                          const SizedBox(height: 10),
                          const Center(child: CircularProgressIndicator())
                        ]));
                      }
                      if (state is RecommendationLoaded) {
                        return SingleChildScrollView(
                            child: Column(children: [
                          ...state.scenery.map((e) {
                            return LocationPreview(location: e);
                          }),
                          ...state.food.map((e) {
                            return LocationPreview(location: e);
                          }),
                          ...state.accommodation.map((e) {
                            return LocationPreview(location: e);
                          }),
                        ]));
                      }

                      return Container();
                    },
                  ),
                ),
                Builder(builder: (context) {
                  if (state is ScheduleLoading) {
                    return const Hint(generating: true);
                  }
                  if (state is ScheduleLoaded) {
                    return Hint(generating: false, onChangePage: onChangePage);
                  }
                  return Container();
                }),
                BlocBuilder<AiAssistantBloc, AiAssistantState>(
                  builder: (context, state) {
                    log('$state');
                    return PromptField(
                      active: (state is! RecommendationLoading &&
                          state is! ScheduleLoading),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
