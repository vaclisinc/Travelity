import 'package:travelity/core/model/schedule_event_m.dart';
import 'package:travelity/core/model/tags_m.dart';

const List<InterestTag> availInterestTags = [
  InterestTag(tag: 'Travel'),
  InterestTag(tag: 'Food'),
  InterestTag(tag: 'Music'),
  InterestTag(tag: 'Sports'),
  InterestTag(tag: 'Nature'),
  InterestTag(tag: 'Art'),
  InterestTag(tag: 'History'),
  InterestTag(tag: 'Culture'),
  InterestTag(tag: 'Business'),
];

const List<PersonalityTag> availPersonalityTags = [
  PersonalityTag(tag: 'Introvert'),
  PersonalityTag(tag: 'Extrovert'),
];

const List<TravelPreferenceTag> availTravelPreferenceTags = [
  TravelPreferenceTag(tag: 'Budget'),
  TravelPreferenceTag(tag: 'Comfort'),
  TravelPreferenceTag(tag: 'Convenience'),
  TravelPreferenceTag(tag: 'Safety'),
  TravelPreferenceTag(tag: 'Family Friendly'),
  TravelPreferenceTag(tag: 'Adventure'),
];

const List<TravelPaceTag> availTravelPaceTags = [
  TravelPaceTag(tag: 'Slow'),
  TravelPaceTag(tag: 'Medium'),
  TravelPaceTag(tag: 'Fast'),
];

const List<List<ScheduleEvent>> mockEvents = [
  [
    ScheduleEvent(
        id: '1',
        title: 'Event 1',
        description: 'Event 1 description',
        startTime: '2023-07-01 10:00',
        isCurrent: true),
    ScheduleEvent(
        id: '2',
        title: 'Event 2',
        description: 'Event 2 description',
        startTime: '2023-07-01 10:00',
        isCurrent: false),
    ScheduleEvent(
        id: '3',
        title: 'Event 3',
        description: 'Event 3 description',
        startTime: '2023-07-01 10:00',
        isCurrent: false),
  ],
  [
    ScheduleEvent(
        id: '4',
        title: 'Event 4',
        description: 'Event 1 description',
        startTime: '2023-07-01 10:00',
        isCurrent: true),
    ScheduleEvent(
        id: '5',
        title: 'Event 5',
        description: 'Event 2 description',
        startTime: '2023-07-01 10:00',
        isCurrent: false),
    ScheduleEvent(
        id: '6',
        title: 'Event 6',
        description: 'Event 3 description',
        startTime: '2023-07-01 10:00',
        isCurrent: false),
  ]
];
