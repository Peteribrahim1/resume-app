import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume/screens/home_screen.dart';
import 'package:resume/screens/more_info_screen.dart';
import 'package:resume/screens/splash_screen.dart';
import 'package:resume/utils/themeModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeModel, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeModel.isDark ? ThemeData.dark() : ThemeData.light(),
            initialRoute: '/',
            routes: {
              '/': (ctx) => SplashScreen(),
              Home.routeName: (ctx) => Home(),
              MoreInfo.routeName: (ctx) => MoreInfo(),
            }
        );
      }
      ),
    );
  }
}

