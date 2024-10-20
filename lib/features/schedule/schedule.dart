import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timelines/timelines.dart';
import 'package:travelity/core/model/schedule_event_m.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';
import 'package:travelity/features/location/location_detail.dart';
import 'package:travelity/get_it.dart';

class ScheduleBody extends StatelessWidget {
  const ScheduleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AiAssistantBloc>(
      create: (context) => sl(),
      child: BlocBuilder<AiAssistantBloc, AiAssistantState>(
        builder: (context, state) {
          if (state is ScheduleLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('推薦行程'),
              ),
              body: DefaultTabController(
                initialIndex: 0,
                length: state.schedules.length,
                child: Column(
                  children: [
                    TabBar(
                      tabs: List.generate(state.schedules.length, (index) {
                        return Tab(
                            // text: 'Day ${index + 1}',
                            child: Column(children: [
                          Text(
                            'Day ${index + 1}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Text(allEvents[0].first.startTime)
                        ]));
                      }),
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children:
                            List.generate(state.schedules.length, (index) {
                          return ScheduleTimeLine(
                            events: state.schedules[index],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Center(child: Text('目前尚無推薦行程'));
        },
      ),
    );
  }
}

class ScheduleTimeLine extends StatelessWidget {
  const ScheduleTimeLine({
    super.key,
    required this.events,
  });

  final List<ScheduleEvent> events;

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
          itemCount: events.length,
          contentsBuilder: (context, index) {
            final event = events[index];
            return GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationDetailPage(
                      location: event.location,
                    ),
                    fullscreenDialog: true,
                  ),
                )
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 40.0, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.location.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: event.isCurrent ? Colors.blue : Colors.black,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      event.location.description,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          },
          indicatorBuilder: (context, index) {
            final event = events[index];
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
