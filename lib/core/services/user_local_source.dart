import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelity/core/model/user_m.dart';

class UserLocalSource {
  UserLocalSource(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  Future<void> saveUser(User user) async {
    await sharedPreferences.setString('user', jsonEncode(user));
  }

  User? getUser() {
    final String? userJson = sharedPreferences.getString('user');
    if (userJson == null) {
      return null;
    }
    log('$userJson is ${userJson.runtimeType}');
    return User.fromJson(jsonDecode(userJson));
  }
}
