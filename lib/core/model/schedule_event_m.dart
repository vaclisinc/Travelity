import 'package:equatable/equatable.dart';
import 'package:travelity/core/model/location_m.dart';

class ScheduleEvent extends Equatable {
  const ScheduleEvent(
      {required this.id,
      required this.startTime,
      required this.isCurrent,
      required this.location});

  final String id;
  final String startTime;
  final bool isCurrent;
  final Location location;

  @override
  List<Object?> get props => [
        id,
        startTime,
        isCurrent,
      ];
}
