import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/core/model/location_m.dart';
import 'package:travelity/core/services/user_local_source.dart';

part 'ai_assistant_event.dart';
part 'ai_assistant_state.dart';

class AiAssistantBloc extends Bloc<AiAssistantEvent, AiAssistantState> {
  AiAssistantBloc(this.userLocalSource) : super(AiAssistantInitial()) {
    on<RequestRecommendation>(onRequestRecommendation);
  }

  final Dio dio = Dio();
  final UserLocalSource userLocalSource;

  Future<void> onRequestRecommendation(
      RequestRecommendation event, Emitter<AiAssistantState> emit) async {
    emit(RecommendationLoading());
    final response =
        await dio.get('https://localhost:8000/recommendation?userPrompt=我想去北京');

    if (response.statusCode == 200) {
      final locations = List<Location>.from(
          response.data['locations'].map((e) => Location.fromJson(e)));
      emit(RecommendationLoaded(locations: locations));
    } else {
      emit(AiAssistantError(error: response.data));
    }
  }
}