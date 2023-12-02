import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cah_tani/common/navigation.dart';
import 'package:cah_tani/common/styles.dart';
import 'package:cah_tani/ui/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigation.replaceNamed(routeName: OnboardingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/illustrations/white-logo.png',
                      width: 250, height: 250),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Text(
                  "Official Mobile App",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: whiteColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ));
  }
}
