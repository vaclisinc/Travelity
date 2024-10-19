import 'dart:async';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelity/core/model/tags_m.dart';
import 'package:travelity/core/model/user_m.dart';
import 'package:travelity/core/services/user_local_source.dart';

part 'user_setup_event.dart';
part 'user_setup_state.dart';

class UserSetupBloc extends Bloc<UserSetupEvent, UserSetupState> {
  UserSetupBloc(this.userLocalSource) : super(const UserSetupInitial()) {
    on<SetInterests>(setInterests);
    on<SetPersonality>(setPersonality);
    on<SetBio>(setBio);
    on<SetTravelPreference>(setTravelPreference);
    on<SetTravelPace>(setTravelPace);
    on<SaveUser>(saveUser);
    on<SetFood>(setFood);
    on<SetAccommodation>(setAccommodation);
  }

  final UserLocalSource userLocalSource;

  String? id;
  String? name;
  String? bio;
  List<InterestTag> interests = [];
  PersonalityTag? personality;
  List<TravelPreferenceTag> travelPreference = [];
  TravelPaceTag? travelPace;
  List<FoodTag> food = [];
  AccommodationTag? accommodation;

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
      travelPace: travelPace,
      food: food,
      accommodation: accommodation,
    )));
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
      travelPace: travelPace,
      food: food,
      accommodation: accommodation,
    )));
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
      travelPace: travelPace,
      food: food,
      accommodation: accommodation,
    )));
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
      travelPace: travelPace,
      food: food,
      accommodation: accommodation,
    )));
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
      travelPace: travelPace,
      food: food,
      accommodation: accommodation,
    )));
  }

  Future<void> setFood(SetFood event, Emitter<UserSetupState> emit) async {
    emit(UserSetupSaving(user: state.user));
    food = event.food;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace,
            food: food,
            accommodation: accommodation)));
  }

  Future<void> setAccommodation(
      SetAccommodation event, Emitter<UserSetupState> emit) async {
    emit(UserSetupSaving(user: state.user));
    accommodation = event.accommodation;
    emit(UserSetupSaved(
        user: User(
            id: id,
            name: name,
            bio: bio,
            interests: interests,
            personality: personality,
            travelPreference: travelPreference,
            travelPace: travelPace,
            food: food,
            accommodation: accommodation)));
  }

  Future<void> saveUser(SaveUser event, Emitter<UserSetupState> emit) async {
    userLocalSource.saveUser(state.user);
  }
}
