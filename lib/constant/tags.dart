import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/core/model/location_m.dart';
import 'package:travelity/core/model/schedule_event_m.dart';

const List<InterestTag> availInterestTags = [
  InterestTag(tag: '攝影'),
  InterestTag(tag: '跑咖'),
  InterestTag(tag: '甜點'),
  InterestTag(tag: '散步'),
  InterestTag(tag: '看海'),
  InterestTag(tag: '購物'),
  InterestTag(tag: '電影'),
  InterestTag(tag: '音樂'),
];

const List<PersonalityTag> availPersonalityTags = [
  PersonalityTag(tag: '內向'),
  PersonalityTag(tag: '外向'),
];

const List<TravelPreferenceTag> availTravelPreferenceTags = [
  TravelPreferenceTag(tag: '冒險'),
  TravelPreferenceTag(tag: '文青'),
  TravelPreferenceTag(tag: '夜生活'),
  TravelPreferenceTag(tag: '歷史探索'),
  TravelPreferenceTag(tag: '戶外運動'),
  TravelPreferenceTag(tag: '藝術欣賞'),
  TravelPreferenceTag(tag: '極限運動'),
  TravelPreferenceTag(tag: '美食饗宴'),
  TravelPreferenceTag(tag: '自然探索'),
  TravelPreferenceTag(tag: '親子友善'),
];

const List<TravelPaceTag> availTravelPaceTags = [
  TravelPaceTag(tag: '步調慢'),
  TravelPaceTag(tag: '適中'),
  TravelPaceTag(tag: '行程緊湊'),
];

const List<FoodTag> availFoodTags = [
  FoodTag(tag: "台灣小吃"),
  FoodTag(tag: "義式料理"),
  FoodTag(tag: "日式料理"),
  FoodTag(tag: "拉麵"),
  FoodTag(tag: "咖哩"),
  FoodTag(tag: "韓式料理"),
  FoodTag(tag: "法式料理"),
  FoodTag(tag: "中式料理"),
  FoodTag(tag: "美式漢堡"),
  FoodTag(tag: "海鮮"),
  FoodTag(tag: "素食"),
  FoodTag(tag: "甜點"),
  FoodTag(tag: "燒烤"),
];

const List<AccommodationTag> availAccommodationTags = [
  AccommodationTag(tag: "豪華飯店"),
  AccommodationTag(tag: "精品旅館"),
  AccommodationTag(tag: "青年旅社"),
  AccommodationTag(tag: "民宿"),
  AccommodationTag(tag: "度假村"),
  AccommodationTag(tag: "公寓"),
  AccommodationTag(tag: "膠囊旅館"),
];

const List<Location> mockLocations = [
  Location(
      id: '1',
      name: '新竹都城隍廟',
      reason: '是位於臺灣新竹市北區中山里的城隍廟，廟身列為市定古蹟，主神為城隍信仰的都城隍爺。',
      imageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipN2XLoDKctZTclJbIDyUpfnsve9yoBhNJVbJrKH=s773-k-no',
      mapUrl: 'https://maps.app.goo.gl/T5E3j2wqpnrm3MH4A',
      tags: ['tag1', 'tag2']),
  Location(
      id: '2',
      name: '新竹市立動物園',
      reason: 'Location 2 description',
      imageUrl:
          'https://lh5.googleusercontent.com/p/AF1QipNme9aUhQrg3sKmzJV3xhCvIAMOSZoV59hCAKhK=w203-h114-k-no',
      mapUrl: 'https://maps.app.goo.gl/66ZJohyqhKFbP82W6',
      tags: ['tag1', 'tag2']),
  Location(
      id: '3',
      name: '豆腐言',
      reason: 'Location 3 description',
      imageUrl:
          'https://www.google.com/maps/place/Tofu+Rocks/@24.7998907,121.0296557,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipOCdcxTFgJX8BAAK0GC5tgok-yeDwFHRzisfR0!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipOCdcxTFgJX8BAAK0GC5tgok-yeDwFHRzisfR0%3Dw152-h86-k-no!7i4032!8i2268!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468365275ff8d69:0xb9fc9a3f139d61c3!8m2!3d24.7998907!4d121.0296557!10e5!16s%2Fg%2F11b7w2__sp?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/PCNw6mwBqCuNDeug9',
      tags: ['tag1', 'tag2']),
  Location(
      id: '4',
      name: '森森燒肉',
      reason: 'Location 4 description',
      imageUrl:
          'https://www.google.com/maps/place/森森燒肉+新竹清大店/@24.7982788,120.994621,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipNxU_YeKf8GCm25hOH_4P3zgQzHvzCAlwxM2XYZ!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNxU_YeKf8GCm25hOH_4P3zgQzHvzCAlwxM2XYZ%3Dw114-h86-k-no!7i4032!8i3024!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468374abfbeeb39:0x3604b5cc9d9aab9!8m2!3d24.7980508!4d120.9944424!10e5!16s%2Fg%2F11lcqwm801?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/RPLJDoFZq9Et8kMPA',
      tags: ['tag1', 'tag2']),
  Location(
      id: '5',
      name: '千甲車站',
      reason: 'Location 5 description',
      imageUrl:
          'https://www.google.com/maps/place/Qianjia+Station/@24.8066779,121.0032786,3a,75y,90t/data=!3m8!1e2!3m6!1sAF1QipO_6V0-gk5SQ8baq1mNX2Bq3pV9Ucof_2eRT30j!2e10!3e12!6shttps:%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipO_6V0-gk5SQ8baq1mNX2Bq3pV9Ucof_2eRT30j%3Dw114-h86-k-no!7i4032!8i3024!4m10!1m2!2m1!1sgoogle+maps!3m6!1s0x3468366590af2bad:0x1ce22e1d80e66343!8m2!3d24.8066779!4d121.0032786!10e5!16s%2Fg%2F1pz2trz3w?entry=ttu&g_ep=EgoyMDI0MTAxNi4wIKXMDSoASAFQAw%3D%3D#',
      mapUrl: 'https://maps.app.goo.gl/S5aHyh5vFCq6mvo49',
      tags: ['tag1', 'tag2']),
  Location(
      id: '6',
      name: 'AI智慧園區',
      reason: 'Location 6 description',
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
