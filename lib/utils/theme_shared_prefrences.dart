import 'package:shared_preferences/shared_preferences.dart';

// creating a ThemeSharedPrefrences class using setTheme and getTheme functions with shared preference that help with dark mode implementation
class ThemeSharedPrefrences {
  static const PREF_KEY = 'prefrences';

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(PREF_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(PREF_KEY) ?? false;
  }
}