part of 'ai_assistant_bloc.dart';

sealed class AiAssistantEvent extends Equatable {
  const AiAssistantEvent();

  @override
  List<Object> get props => [];
}

class RequestRecommendation extends AiAssistantEvent {
  const RequestRecommendation({required this.userPrompt});

  final String userPrompt;

  @override
  List<Object> get props => [userPrompt];
}

class RequestSceneryRecommendation extends AiAssistantEvent {
  const RequestSceneryRecommendation({required this.userPrompt});

  final String userPrompt;

  @override
  List<Object> get props => [userPrompt];
}

class RequestFoodRecommendation extends AiAssistantEvent {
  const RequestFoodRecommendation({required this.userPrompt});

  final String userPrompt;

  @override
  List<Object> get props => [userPrompt];
}

class RequestAccommodationRecommendation extends AiAssistantEvent {
  const RequestAccommodationRecommendation({required this.userPrompt});

  final String userPrompt;

  @override
  List<Object> get props => [userPrompt];
}

class RequestSchedule extends AiAssistantEvent {
  const RequestSchedule();

  @override
  List<Object> get props => [];
}
