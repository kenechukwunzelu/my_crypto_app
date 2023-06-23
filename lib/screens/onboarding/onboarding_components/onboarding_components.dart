import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingComponents extends StatelessWidget {
  const OnboardingComponents(
      {super.key,
      required this.onboardingText,
      required this.subheadingText,
      required this.onboardingIcon});

  final Icon onboardingIcon;
  final String onboardingText;
  final String subheadingText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          child: onboardingIcon,
        ),
        const SizedBox(height: 30),
        Text(
          onboardingText,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subheadingText,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}