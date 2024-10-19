import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:travelity/core/model/schedule_event_m.dart';

class ScheduleBody extends StatelessWidget {
  const ScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0.15, // Adjusts the position of the node (circles)
          connectorTheme: const ConnectorThemeData(
            thickness: 2.0, // Thickness of the timeline line
            color: Colors.grey, // Color of the timeline line
          ),
        ),
        builder: TimelineTileBuilder.connected(
          connectionDirection: ConnectionDirection.before,
          itemCount: _events.length,
          contentsBuilder: (context, index) {
            final event = _events[index];
            return Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 20.0, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: event.isCurrent ? Colors.blue : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    event.description,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          },
          indicatorBuilder: (context, index) {
            final event = _events[index];
            return DotIndicator(
              size: 30.0,
              color: event.isCurrent ? Colors.blue : Colors.grey,
              child: event.isCurrent
                  ? const Icon(
                      Icons.location_on_sharp,
                      color: Colors.white,
                      size: 20,
                    )
                  : null,
            );
          },
          connectorBuilder: (_, index, ___) => const SolidLineConnector(),
        ),
      ),
    );
  }
}

final List<ScheduleEvent> _events = [
  const ScheduleEvent(
      id: '1',
      title: '인스타그램',
      description: '바다나는 어떤 이야기지?',
      startTime: '2023-07-01 10:00',
      isCurrent: true),
  const ScheduleEvent(
      id: '2',
      title: '인스타그램',
      description: '바다나는 어떤 이야기지?',
      startTime: '2023-07-01 10:00',
      isCurrent: false),
  const ScheduleEvent(
      id: '3',
      title: '인스타그램',
      description: '바다나는 어떤 이야기지?',
      startTime: '2023-07-01 10:00',
      isCurrent: false),
];
