import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/constant/tags.dart';
import 'package:travelity/core/model/location_m.dart';
import 'package:travelity/core/model/schedule_event_m.dart';
import 'package:travelity/core/services/user_local_source.dart';

part 'ai_assistant_event.dart';
part 'ai_assistant_state.dart';

class AiAssistantBloc extends Bloc<AiAssistantEvent, AiAssistantState> {
  AiAssistantBloc(this.userLocalSource) : super(AiAssistantInitial()) {
    on<RequestSceneryRecommendation>(onRequestSceneryRecommendation);
    on<RequestFoodRecommendation>(onRequestFoodRecommendation);
    on<RequestAccommodationRecommendation>(
        onRequestAccommodationRecommendation);
    on<RequestRecommendation>(onRequestRecommendation);
    on<RequestSchedule>(onRequestSchedule);
  }

  final Dio dio = Dio();
  final UserLocalSource userLocalSource;
  List<Location>? sceneryRecommendation;
  List<Location>? foodRecommendation;
  List<Location>? accommodationRecommendation;

  Future<void> onRequestRecommendation(
      RequestRecommendation event, Emitter<AiAssistantState> emit) async {
    sceneryRecommendation = null;
    foodRecommendation = null;
    accommodationRecommendation = null;
    add(RequestSceneryRecommendation(userPrompt: event.userPrompt));
    add(RequestFoodRecommendation(userPrompt: event.userPrompt));
    add(RequestAccommodationRecommendation(userPrompt: event.userPrompt));
  }

  Future<void> onRequestSceneryRecommendation(
      RequestSceneryRecommendation event,
      Emitter<AiAssistantState> emit) async {
    emit(const RecommendationLoading());
    await Future.delayed(const Duration(seconds: 2));
    sceneryRecommendation = mockLocations.getRange(0, 2).toList();
    if (foodRecommendation == null || accommodationRecommendation == null) {
      emit(RecommendationLoading(
          accommodation: accommodationRecommendation,
          food: foodRecommendation,
          scenery: sceneryRecommendation));
    } else {
      emit(RecommendationLoaded(
          accommodation: accommodationRecommendation!,
          food: foodRecommendation!,
          scenery: sceneryRecommendation!));
      add(const RequestSchedule());
    }
    // User user = userLocalSource.getUser()!;
    // final response = await dio.get(
    //   'https://localhost:8000/recommendation?userPrompt=我想去北京',
    //   data: {
    //     'user_prompt': event.userPrompt,
    //     'user_features': user.toJson(),
    //   },
    // );

    // if (response.statusCode == 200) {
    //   final locations = List<Location>.from(
    //       response.data['locations'].map((e) => Location.fromJson(e)));
    //   emit(RecommendationLoaded(locations: locations));
    // } else {
    //   emit(AiAssistantError(error: response.data));
    // }
  }

  Future<void> onRequestFoodRecommendation(
      RequestFoodRecommendation event, Emitter<AiAssistantState> emit) async {
    emit(const RecommendationLoading());
    await Future.delayed(const Duration(seconds: 3));
    foodRecommendation = mockLocations.getRange(2, 4).toList();
    if (sceneryRecommendation == null || accommodationRecommendation == null) {
      emit(RecommendationLoading(
          accommodation: accommodationRecommendation,
          food: foodRecommendation,
          scenery: sceneryRecommendation));
    } else {
      emit(RecommendationLoaded(
          accommodation: accommodationRecommendation!,
          food: foodRecommendation!,
          scenery: sceneryRecommendation!));
      add(const RequestSchedule());
    }
  }

  Future<void> onRequestAccommodationRecommendation(
      RequestAccommodationRecommendation event,
      Emitter<AiAssistantState> emit) async {
    emit(const RecommendationLoading());
    await Future.delayed(const Duration(seconds: 4));
    accommodationRecommendation = mockLocations.getRange(4, 6).toList();
    if (foodRecommendation == null || sceneryRecommendation == null) {
      emit(RecommendationLoading(
          accommodation: accommodationRecommendation,
          food: foodRecommendation,
          scenery: sceneryRecommendation));
    } else {
      emit(RecommendationLoaded(
          accommodation: accommodationRecommendation!,
          food: foodRecommendation!,
          scenery: sceneryRecommendation!));
      add(const RequestSchedule());
    }
  }

  Future<void> onRequestSchedule(
      RequestSchedule event, Emitter<AiAssistantState> emit) async {
    emit(ScheduleLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(ScheduleLoaded(schedules: mockEvents));
  }
}
