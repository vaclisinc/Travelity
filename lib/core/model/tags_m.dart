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

class BioField extends Equatable {
  const BioField({
    required this.field,
  });

  final String field;

  @override
  List<Object?> get props => [field];
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

class FoodTag extends Equatable {
  const FoodTag({required this.tag});

  final String tag;

  @override
  List<Object?> get props => [tag];
}

class AccommodationTag extends Equatable {
  const AccommodationTag({required this.tag});

  final String tag;

  @override
  List<Object?> get props => [tag];
}
