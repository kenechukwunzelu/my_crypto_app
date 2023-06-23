import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SellBuySwap extends StatefulWidget {
  const SellBuySwap(
      {super.key, required this.mySBSText, required this.mySBSIcon});

  final String mySBSText;
  final Icon mySBSIcon;

  @override
  State<SellBuySwap> createState() => _SellBuySwapState();
}

class _SellBuySwapState extends State<SellBuySwap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Row(
          children: [
            Text(
              widget.mySBSText,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(width: 10),
            widget.mySBSIcon
          ],
        ),
      ),
    );
  }
}
