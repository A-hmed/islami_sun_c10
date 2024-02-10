import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/screens/home/home_screen.dart';
import 'package:islami_sun_c10/ui/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_sun_c10/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SebhaTab.routeName: (_) => SebhaTab(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

