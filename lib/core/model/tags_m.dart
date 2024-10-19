import 'package:equatable/equatable.dart';

class InterestTag extends Equatable {
  const InterestTag({
    required this.tag,
  });

  final String tag;

  InterestTag.fromJson(Map<String, dynamic> json) : tag = json['tag'];

  @override
  List<Object?> get props => [tag];
}

class PersonalityTag extends Equatable {
  const PersonalityTag({
    required this.tag,
  });

  final String tag;

  PersonalityTag.fromJson(Map<String, dynamic> json) : tag = json['tag'];

  @override
  List<Object?> get props => [tag];
}

class BioField extends Equatable {
  const BioField({
    required this.field,
  });

  final String field;

  BioField.fromJson(Map<String, dynamic> json) : field = json['field'];

  @override
  List<Object?> get props => [field];
}

class TravelPreferenceTag extends Equatable {
  const TravelPreferenceTag({
    required this.tag,
  });

  final String tag;

  TravelPreferenceTag.fromJson(Map<String, dynamic> json) : tag = json['tag'];

  @override
  List<Object?> get props => [tag];
}

class TravelPaceTag extends Equatable {
  const TravelPaceTag({
    required this.tag,
  });

  final String tag;

  TravelPaceTag.fromJson(Map<String, dynamic> json) : tag = json['tag'];

  @override
  List<Object?> get props => [tag];
}
