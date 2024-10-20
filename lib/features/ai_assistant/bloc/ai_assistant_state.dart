part of 'ai_assistant_bloc.dart';

sealed class AiAssistantState extends Equatable {
  const AiAssistantState();

  @override
  List<Object?> get props => [];
}

final class AiAssistantInitial extends AiAssistantState {}

final class RecommendationLoading extends AiAssistantState {
  const RecommendationLoading({this.scenery, this.food, this.accommodation});

  final List<Location>? scenery;
  final List<Location>? food;
  final List<Location>? accommodation;

  @override
  List<Object?> get props => [scenery, food, accommodation];
}

final class RecommendationLoaded extends AiAssistantState {
  const RecommendationLoaded(
      {required this.scenery, required this.food, required this.accommodation});

  final List<Location> scenery;
  final List<Location> food;
  final List<Location> accommodation;

  @override
  List<Object> get props => [scenery, food, accommodation];
}

final class ScheduleLoading extends AiAssistantState {}

final class ScheduleLoaded extends AiAssistantState {
  const ScheduleLoaded({required this.schedules});

  final List<List<ScheduleEvent>> schedules;

  @override
  List<Object> get props => [schedules];
}

final class AiAssistantError extends AiAssistantState {
  const AiAssistantError({required this.error});

  final Object error;

  @override
  List<Object> get props => [error];
}
