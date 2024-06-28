import 'package:eas_ppb/pages/detail_page.dart';
import 'package:eas_ppb/pages/product_list.dart';
import 'package:eas_ppb/pages/profile_page.dart';
import 'package:eas_ppb/pages/signin_page.dart';
import 'package:eas_ppb/pages/signup_page.dart';
import 'package:eas_ppb/pages/splash_screen.dart';
import 'package:eas_ppb/pages/topup_page.dart';
import 'package:eas_ppb/pages/topup_success_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: Color(0xFF000000)))
              .fontFamily),
      home: const SplashScreen(),
      routes: {
        '/signup': (context) => const SignUpPage(),
        '/signin': (context) => const SignInPage(),
        '/product': (context) => const ProductListPage(),
        '/detail': (context) => const DetailPage(),
        '/profile': (context) => const ProfilePage(),
        '/topup': (context) => const TopUpPage(),
        '/topup/berhasil': (context) => const TopUpSuccessPage()
      },
    );
  }
}
