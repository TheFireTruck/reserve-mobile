import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reserve_io/features/authentication/presentation/pages/login.dart';
import 'package:reserve_io/features/home/presentation/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Reserve.io',
              style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
