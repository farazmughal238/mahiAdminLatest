import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefHelper{
  SharedPreferences get();
  void setName(String name);
  String? retrieveName();
  void saveToken(String token);
  String? retrieveToken();
}