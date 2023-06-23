import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVerified extends StatefulWidget {
  const AccountVerified({super.key});

  @override
  State<AccountVerified> createState() => _AccountVerifiedState();
}

class _AccountVerifiedState extends State<AccountVerified> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Account Verified',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Your email was successfully verified',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                ),
                 const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Complete my KYC',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                 const SizedBox(height: 32),
                Text(
                  'Skip to dashboard',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
