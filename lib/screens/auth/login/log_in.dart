import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_crypto_app/utils/my_textfield.dart';

import '../../../utils/password_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(Icons.arrow_back),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const MyTextField(
                  labelText: 'Email',
                  myIcon: Icon(Icons.email_outlined),
                ),
                const SizedBox(height: 5),
                const PasswordTextField(),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot your password?',
                      style: GoogleFonts.lato(
                        textStyle:
                            const TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Login',
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text.rich(
                  const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Don\'t have an account?',
                      ),
                      TextSpan(
                        text: '  Create account',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 12, height: 2),
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
