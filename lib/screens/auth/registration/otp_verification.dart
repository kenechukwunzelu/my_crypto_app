import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/toastbar.dart';

class OTPVerfication extends StatefulWidget {
  const OTPVerfication({super.key});

  @override
  State<OTPVerfication> createState() => _OTPVerficationState();
}

class _OTPVerficationState extends State<OTPVerfication> {
  final _otpController = List.generate(6, (index) => TextEditingController());
  final _toast = FToast();

  @override
  void initState() {
    super.initState();
    // if you want to use context from globally instead of content we need to pass navigatorKey.currentContext!
    _toast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                Row(
                  children: const [Icon(Icons.close)],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Enter OTP code',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  'We have sent a verification link to your mail to verify your account.',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(fontSize: 16, height: 2),
                  ),
                ),
                const SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildOtpTextField(0),
                    _buildOtpTextField(1),
                    _buildOtpTextField(2),
                    _buildOtpTextField(3),
                    _buildOtpTextField(4),
                    _buildOtpTextField(5),
                  ],
                ),
                const SizedBox(height: 50.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.cyan.shade700,
                        child: ElevatedButton(
                          onPressed: showToastBar, //_verifyOtp
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'Verify OTP',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  'Resend code',
                  style: GoogleFonts.lato(
                    textStyle:
                        const TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOtpTextField(int index) {
    return SizedBox(
      height: 50,
      width: 50.0,
      child: TextField(
        controller: _otpController[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ),
    );
  }

  /* void _verifyOtp() {
    String otp = '';
    for (var controller in _otpController) {
      otp += controller.text;
    }
    // Do something with the OTP, e.g. send it to a server for verification
    // print('Entered OTP is: $otp');
  }
} */

}
