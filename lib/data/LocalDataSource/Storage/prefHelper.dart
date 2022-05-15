import 'package:shared_preferences/shared_preferences.dart';

import 'IPrefHelper.dart';

String NAME = 'name';

class PrefHelper implements IPrefHelper{
  SharedPreferences pref;
  PrefHelper({required this.pref});

  @override
  SharedPreferences get() => pref;

  @override
  String? retrieveName() => pref.containsKey(NAME)? pref.getString(NAME) : null;

  @override
  void setName(String name) {
    pref.setString(NAME, name);
  }

  @override
  void saveToken(String token) {
    pref.setString('token', token);
  }

  @override
  String? retrieveToken() => pref.containsKey('token')? pref.getString('token'): null;
}