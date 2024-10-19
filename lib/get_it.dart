import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelity/core/services/user_local_source.dart';
import 'package:travelity/features/ai_assistant/bloc/ai_assistant_bloc.dart';
import 'package:travelity/features/introduction/bloc/user_setup_bloc.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  sl.registerSingleton<UserLocalSource>(UserLocalSource(sl()));
  sl.registerFactory<UserSetupBloc>(() => UserSetupBloc(sl()));
  sl.registerFactory<AiAssistantBloc>(() => AiAssistantBloc(sl()));
}
