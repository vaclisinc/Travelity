import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelity/core/services/user_local_source.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  sl.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  sl.registerSingleton<UserLocalSource>(UserLocalSource(sl()));
}
