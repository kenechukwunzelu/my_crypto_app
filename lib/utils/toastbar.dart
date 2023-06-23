import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

FToast  _tooast = FToast();

class MyToastBarMsg extends StatelessWidget {
  const MyToastBarMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return myToastBar();
  }
}

Widget myToastBar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    decoration: BoxDecoration(
      color: Colors.blue.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.blue),
    ),
    child: Row(
      children: [
        Icon(
          Icons.check,
          color: Colors.green.shade900,
        ),
        const SizedBox(width: 14),
        Text(
          'Verification successful',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}

void showToastBar() {
  _tooast.showToast(
    child: myToastBar(),
    gravity: ToastGravity.TOP,
  );
}
