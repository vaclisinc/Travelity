import 'package:travelity/core/model/location_m.dart';
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
  InterestTag(tag: 'Shopping')
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

const List<Location> mockLocations = [
  Location(
      id: '1',
      name: '新竹城隍妙',
      description: 'Location 1 description',
      imageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipN2XLoDKctZTclJbIDyUpfnsve9yoBhNJVbJrKH=s773-k-no',
      mapUrl: 'https://maps.app.goo.gl/T5E3j2wqpnrm3MH4A',
      tags: ['tag1', 'tag2']),
  Location(
      id: '2',
      name: '新竹勢力動物園',
      description: 'Location 2 description',
      imageUrl:
          'https://www.google.com/maps/place/Hsinchu+Zoo/@24.8001508,120.9799311,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipNme9aUhQrg3sKmzJV3xhCvIAMOSZoV59hCAKhK!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNme9aUhQrg3sKmzJV3xhCvIAMOSZoV59hCAKhK%3Dw152-h86-k-no!7i4000!8i2250!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x346835dd9e16bf97:0x655055c03a215bcf!8m2!3d24.8001567!4d120.9799245!10e5!16s%2Fm%2F011qb1tq?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/66ZJohyqhKFbP82W6',
      tags: ['tag1', 'tag2']),
  Location(
      id: '3',
      name: '豆腐言',
      description: 'Location 3 description',
      imageUrl:
          'https://www.google.com/maps/place/Tofu+Rocks/@24.7998907,121.0296557,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipOCdcxTFgJX8BAAK0GC5tgok-yeDwFHRzisfR0!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOCdcxTFgJX8BAAK0GC5tgok-yeDwFHRzisfR0%3Dw152-h86-k-no!7i4032!8i2268!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468365275ff8d69:0xb9fc9a3f139d61c3!8m2!3d24.7998907!4d121.0296557!10e5!16s%2Fg%2F11b7w2__sp?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/PCNw6mwBqCuNDeug9',
      tags: ['tag1', 'tag2']),
  Location(
      id: '4',
      name: '森森燒肉',
      description: 'Location 4 description',
      imageUrl:
          'https://www.google.com/maps/place/森森燒肉+新竹清大店/@24.7982788,120.994621,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipNxU_YeKf8GCm25hOH_4P3zgQzHvzCAlwxM2XYZ!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNxU_YeKf8GCm25hOH_4P3zgQzHvzCAlwxM2XYZ%3Dw114-h86-k-no!7i4032!8i3024!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468374abfbeeb39:0x3604b5cc9d9aab9!8m2!3d24.7980508!4d120.9944424!10e5!16s%2Fg%2F11lcqwm801?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/RPLJDoFZq9Et8kMPA',
      tags: ['tag1', 'tag2']),
  Location(
      id: '5',
      name: '千甲車站',
      description: 'Location 5 description',
      imageUrl:
          'https://www.google.com/maps/place/Qianjia+Station/@24.8066779,121.0032786,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipO_6V0-gk5SQ8baq1mNX2Bq3pV9Ucof_2eRT30j!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO_6V0-gk5SQ8baq1mNX2Bq3pV9Ucof_2eRT30j%3Dw114-h86-k-no!7i4032!8i3024!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468366590af2bad:0x1ce22e1d80e66343!8m2!3d24.8066779!4d121.0032786!10e5!16s%2Fg%2F1pz2trz3w?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/S5aHyh5vFCq6mvo49',
      tags: ['tag1', 'tag2']),
  Location(
      id: '6',
      name: 'AI智慧園區',
      description: 'Location 6 description',
      imageUrl:
          'https://www.google.com/maps/place/Artificial+Intelligence+Area+Park/@24.8316416,121.0223401,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipOKXNe1LkueMDSsVjEg9Iasu-lhmgJxNx67Ilra!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOKXNe1LkueMDSsVjEg9Iasu-lhmgJxNx67Ilra%3Dw114-h86-k-no!7i3510!8i2634!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x346837e5c3b04d9d:0xb9aee7eb942322e!8m2!3d24.8316416!4d121.0223401!10e5!16s%2Fg%2F11rqxh6dt5?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/U9DnLuQoLZtQLVXC6',
      tags: ['tag1', 'tag2']),
];

List<List<ScheduleEvent>> mockEvents = [
  [
    ScheduleEvent(
        id: '1',
        startTime: '2023-07-01 10:00',
        isCurrent: true,
        location: mockLocations[0]),
    ScheduleEvent(
        id: '2',
        startTime: '2023-07-01 10:00',
        isCurrent: false,
        location: mockLocations[1]),
    ScheduleEvent(
        id: '3',
        startTime: '2023-07-01 10:00',
        isCurrent: false,
        location: mockLocations[2]),
  ],
  [
    ScheduleEvent(
        id: '4',
        startTime: '2023-07-01 10:00',
        isCurrent: false,
        location: mockLocations[3]),
    ScheduleEvent(
        id: '5',
        startTime: '2023-07-01 10:00',
        isCurrent: false,
        location: mockLocations[4]),
    ScheduleEvent(
        id: '6',
        startTime: '2023-07-01 10:00',
        isCurrent: false,
        location: mockLocations[5]),
  ]
];
