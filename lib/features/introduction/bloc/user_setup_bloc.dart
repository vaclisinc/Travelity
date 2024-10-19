import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/core/model/user_m.dart';

part 'user_setup_event.dart';
part 'user_setup_state.dart';

class UserSetupBloc extends Bloc<UserSetupEvent, UserSetupState> {
  UserSetupBloc() : super(const UserSetupInitial()) {
    on<SetInterests>(setInterests);
    on<SetPersonality>(setPersonality);
    on<SetBio>(setBio);
    on<SetTravelPreference>(setTravelPreference);
    on<SetTravelPace>(setTravelPace);
  }

  String? id;
  String? name;
  String? bio;
  List<InterestTag> interests = [];
  PersonalityTag? personality;
  List<TravelPreferenceTag> travelPreference = [];
  TravelPaceTag? travelPace;

  Future<void> setInterests(
      SetInterests event, Emitter<UserSetupState> emit) async {
    emit(UserSetupSaving(user: state.user));
    interests = event.interests;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace)));
  }

  void setPersonality(SetPersonality event, Emitter<UserSetupState> emit) {
    emit(UserSetupSaving(user: state.user));
    personality = event.personality;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace)));
  }

  void setBio(SetBio event, Emitter<UserSetupState> emit) {
    emit(UserSetupSaving(user: state.user));
    bio = event.bio;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace)));
  }

  void setTravelPreference(
      SetTravelPreference event, Emitter<UserSetupState> emit) {
    emit(UserSetupSaving(user: state.user));
    travelPreference = event.travelPreference;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace)));
  }

  void setTravelPace(SetTravelPace event, Emitter<UserSetupState> emit) {
    emit(UserSetupSaving(user: state.user));
    travelPace = event.travelPace;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace)));
  }
}
