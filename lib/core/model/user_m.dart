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
