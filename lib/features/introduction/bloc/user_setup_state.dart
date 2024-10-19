part of 'user_setup_bloc.dart';

sealed class UserSetupState extends Equatable {
  const UserSetupState({required this.user});

  final User user;

  @override
  List<Object> get props => [user];
}

final class UserSetupInitial extends UserSetupState {
  const UserSetupInitial(
      {super.user = const User(
        id: null,
        name: null,
        bio: null,
        interests: [],
        personality: null,
        travelPreference: [],
        travelPace: null,
        food: [],
        accommodation: null,
      )});

  @override
  List<Object> get props => [user];
}

final class UserSetupSaving extends UserSetupState {
  const UserSetupSaving({required super.user});
}

final class UserSetupSaved extends UserSetupState {
  const UserSetupSaved({required super.user});
}

final class UserSetupLoaded extends UserSetupState {
  const UserSetupLoaded({
    required super.user,
  });
}
