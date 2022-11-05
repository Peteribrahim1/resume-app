import 'package:flutter/cupertino.dart';
import 'package:resume/utils/theme_shared_prefrences.dart';

// creating a ThemeModel class that extends changeNotifier that helps with switching mode implementation
class ThemeModel extends ChangeNotifier {
  late bool _isDark;
  late ThemeSharedPrefrences themeSharedPrefrences;
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    themeSharedPrefrences = ThemeSharedPrefrences();
    getThemePrefrences();
  }

  set isDark(bool value) {
    _isDark = value;
    themeSharedPrefrences.setTheme(value);
    notifyListeners();
  }

  getThemePrefrences() async {
    _isDark = await themeSharedPrefrences.getTheme();
    notifyListeners();
  }
}