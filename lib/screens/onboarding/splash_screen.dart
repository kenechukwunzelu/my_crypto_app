import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class MySplasScreen extends StatefulWidget {
  const MySplasScreen({super.key});

  @override
  State<MySplasScreen> createState() => _MySplasScreenState();
}

class _MySplasScreenState extends State<MySplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 150,
              child: Image.asset('lib/images/onboarding/onboarding_logo.png'),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 15,
            ),
          )
        ],
      ),
    );
  }
}
