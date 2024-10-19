import 'package:equatable/equatable.dart';
import 'package:travelity/core/model/tags_m.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.bio,
    required this.interests,
    required this.personality,
    required this.travelPreference,
    required this.travelPace,
    required this.food,
    required this.accommodation,
  });

  final String? id;
  final String? name;
  final String? bio;
  final List<InterestTag>? interests;
  final PersonalityTag? personality;
  final List<TravelPreferenceTag>? travelPreference;
  final TravelPaceTag? travelPace;
  final List<FoodTag>? food;
  final AccommodationTag? accommodation;

  User.fromJson(Map<String, dynamic> json)
      : id = json['userId'],
        name = json['name'],
        bio = json['bio'],
        interests = json['interestTags'] != null
            ? (json['interestTags'] as List<dynamic>)
                .map((e) => InterestTag.fromJson(e))
                .toList()
            : null,
        personality = json['personalityTags'] != null
            ? PersonalityTag.fromJson(json['personalityTags'])
            : null,
        travelPreference = json['travelPreferenceTags'] != null
            ? (json['travelPreferenceTags'] as List<dynamic>)
                .map((e) => TravelPreferenceTag.fromJson(e))
                .toList()
            : null,
        travelPace = json['travelPaceTags'] != null
            ? TravelPaceTag.fromJson(json['travelPaceTags'])
            : null,
        food = json['foodTags'] != null
            ? (json['foodTags'] as List<dynamic>)
                .map((e) => FoodTag.fromJson(e))
                .toList()
            : null,
        accommodation = json['accommodationTags'] != null
            ? AccommodationTag.fromJson(json['accommodationTags'])
            : null;

  Map<String, dynamic> toJson() {
    return {
      'userId': id,
      'bio': bio,
      'interestTags': interests?.map((e) => e.toJson()).toList(),
      'personalityTags': personality?.toJson(),
      'travelPreferenceTags': travelPreference?.map((e) => e.toJson()).toList(),
      'travelPaceTags': travelPace?.toJson(),
      'foodTags': food?.map((e) => e.toJson()).toList(),
      'accommodationTags': accommodation?.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        id,
        name,
        bio,
        interests,
        personality,
        travelPreference,
        travelPace,
        food,
        accommodation,
      ];
}
