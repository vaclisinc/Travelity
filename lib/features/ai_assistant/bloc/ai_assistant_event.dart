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
