import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/my_textfield.dart';
import '../../../utils/password_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [Icon(Icons.close)],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Create your account',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const MyTextField(
                  labelText: 'Full name',
                  myIcon: Icon(Icons.people),
                ),
                const MyTextField(
                  labelText: 'Email',
                  myIcon: Icon(Icons.email_outlined),
                ),
                const MyTextField(
                  labelText: 'Username',
                  myIcon: Icon(Icons.person),
                ),
                const PasswordTextField(),
                const SizedBox(height: 10),
                Text(
                  'Must contain at least 8 characters, one uppercase, one lowercase, and one number or special character',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 12, height: 2),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text.rich(
                        const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'I Understand',
                            ),
                            TextSpan(
                              text: ' Nazza\'s Terms of Use',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 12, height: 2),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Create account',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade200,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
