import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KYCVerified extends StatelessWidget {
  const KYCVerified({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'KYC Verified!',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Thanks for verifying your identity',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontSize: 16, height: 3),
                ),
              ),
              const SizedBox(height: 70),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          'Done',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(fontSize: 14, height: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
