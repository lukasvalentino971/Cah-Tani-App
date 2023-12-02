import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:cah_tani/common/navigation.dart';
import 'package:cah_tani/common/styles.dart';
import 'package:cah_tani/ui/login/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = '/onboarding-screen';

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  List<PageViewModel> listPages = [
    PageViewModel(
      title: "Selamat datang di Aplikasi Cah Tani!",
      body:
          "Aplikasi Cah Tani adalah aplikasi konsultasi pertanian yang membantu para petani untuk mendapatkan informasi dan solusi yang tepat untuk tanaman mereka",
      image: Center(
        child: Image.asset('assets/illustrations/Other 15.png'),
      ),
    ),
    PageViewModel(
      title: "Dapatkan solusi pertanian yang cepat dan tepat",
      body:
          "Dengan Aplikasi Cah Tani, Anda dapat berkonsultasi dengan para ahli pertanian secara langsung. Anda juga dapat mengakses berbagai informasi pertanian yang bermanfaat",
      image: Center(
        child: Image.asset('assets/illustrations/Other 08.png'),
      ),
    ),
    PageViewModel(
      title: "Keamanan Data Terjamin",
      body:
          "Aplikasi Cah Tani menggunakan sistem keamanan yang terjamin untuk melindungi data Anda.",
      image: Center(
        child: Image.asset('assets/illustrations/Other 18.png'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: IntroductionScreen(
          key: introKey,
          pages: listPages,
          showSkipButton: true,
          skip: Text(
            "Lewati",
            style: GoogleFonts.poppins(fontSize: 16, color: grayColor),
          ),
          next: const CircleAvatar(
            radius: 30,
            foregroundColor: whiteColor,
            backgroundColor: primaryColor,
            child: Icon(
              Icons.arrow_forward,
              size: 24,
            ),
          ),
          done: Text(
            "Mulai",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: primaryColor,
            ),
          ),
          onDone: () {
            Navigation.replaceNamed(routeName: LoginScreen.routeName);
          },
          onSkip: () {
            introKey.currentState?.skipToEnd();
          },
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: primaryColor,
            color: grayColor,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}
