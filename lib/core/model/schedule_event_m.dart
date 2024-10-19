import 'package:equatable/equatable.dart';

class ScheduleEvent extends Equatable {
  const ScheduleEvent(
      {required this.id,
      required this.title,
      required this.description,
      required this.startTime,
      required this.isCurrent});

  final String id;
  final String title;
  final String description;
  final String startTime;
  final bool isCurrent;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        startTime,
        isCurrent,
      ];
}
