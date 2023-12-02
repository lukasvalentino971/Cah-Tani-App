import 'package:flutter/material.dart';
import 'package:cah_tani/common/navigation.dart';
import 'package:cah_tani/ui/home/home_screen.dart';
import 'package:cah_tani/ui/login/login_screen.dart';
import 'package:cah_tani/ui/onboarding/onboarding_screen.dart';
import 'package:cah_tani/ui/register/register_screen.dart';
import 'package:cah_tani/ui/splash/splash_screen.dart';

Future<void> main() async => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cah Tani',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        OnboardingScreen.routeName: (context) => OnboardingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
      },
      navigatorKey: navigatorKey,
    );
  }
}
