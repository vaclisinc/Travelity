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
  });

  final String? id;
  final String? name;
  final String? bio;
  final List<InterestTag>? interests;
  final PersonalityTag? personality;
  final List<TravelPreferenceTag>? travelPreference;
  final TravelPaceTag? travelPace;

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        bio = json['bio'],
        interests = json['interests'] != null
            ? (json['interests'] as List<dynamic>)
                .map((e) => InterestTag.fromJson(e))
                .toList()
            : null,
        personality = json['personality'] != null
            ? PersonalityTag.fromJson(json['personality'])
            : null,
        travelPreference = json['travelPreference'] != null
            ? (json['travelPreference'] as List<dynamic>)
                .map((e) => TravelPreferenceTag.fromJson(e))
                .toList()
            : null,
        travelPace = json['travelPace'] != null
            ? TravelPaceTag.fromJson(json['travelPace'])
            : null;

  @override
  List<Object?> get props => [
        id,
        name,
        bio,
        interests,
        personality,
        travelPreference,
        travelPace,
      ];
}
