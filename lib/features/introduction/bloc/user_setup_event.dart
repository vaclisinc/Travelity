part of 'user_setup_bloc.dart';

sealed class UserSetupEvent extends Equatable {
  const UserSetupEvent();

  @override
  List<Object> get props => [];
}

class SetInterests extends UserSetupEvent {
  const SetInterests({required this.interests});

  final List<InterestTag> interests;

  @override
  List<Object> get props => [interests];
}

class SetPersonality extends UserSetupEvent {
  const SetPersonality({required this.personality});

  final PersonalityTag personality;

  @override
  List<Object> get props => [personality];
}

class SetBio extends UserSetupEvent {
  const SetBio({required this.bio});

  final String bio;

  @override
  List<Object> get props => [bio];
}

class SetTravelPreference extends UserSetupEvent {
  const SetTravelPreference({required this.travelPreference});

  final List<TravelPreferenceTag> travelPreference;

  @override
  List<Object> get props => [travelPreference];
}

class SetTravelPace extends UserSetupEvent {
  const SetTravelPace({required this.travelPace});

  final TravelPaceTag travelPace;

  @override
  List<Object> get props => [travelPace];
}

class SaveUser extends UserSetupEvent {
  const SaveUser();

  @override
  List<Object> get props => [];
}
