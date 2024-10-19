import 'package:equatable/equatable.dart';

class InterestTag extends Equatable {
  const InterestTag({
    required this.tag,
  });

  final String tag;

  @override
  List<Object?> get props => [tag];
}

class PersonalityTag extends Equatable {
  const PersonalityTag({
    required this.tag,
  });

  final String tag;

  @override
  List<Object?> get props => [tag];
}

class TravelPreferenceTag extends Equatable {
  const TravelPreferenceTag({
    required this.tag,
  });

  final String tag;

  @override
  List<Object?> get props => [tag];
}

class TravelPaceTag extends Equatable {
  const TravelPaceTag({
    required this.tag,
  });

  final String tag;

  @override
  List<Object?> get props => [tag];
}
