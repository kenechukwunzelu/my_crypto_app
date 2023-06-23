import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transcations extends StatefulWidget {
  const Transcations({super.key});

  @override
  State<Transcations> createState() => _TranscationsState();
}

class _TranscationsState extends State<Transcations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('lib/images/dashboard/transaction.png', height: 50, width: 50,),
        const SizedBox(height: 10),
        Text(
          'No Transactions',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
