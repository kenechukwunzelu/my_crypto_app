import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_crypto_app/screens/onboarding/onboarding_components/onboarding_components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [
                OnboardingComponents(
                  onboardingIcon: Icon(
                    Icons.wallet,
                    size: 50,
                    color: Colors.white,
                  ),
                  onboardingText: 'Manage your crypto assets',
                  subheadingText:
                      'Take full control of your wallet. Manage your crypto on Nazza App.',
                ),
                OnboardingComponents(
                  onboardingIcon: Icon(
                    Icons.cloud_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                  onboardingText: 'Buy and sell with ease',
                  subheadingText:
                      'Your recovery phrase will be encrypted and backed up to your cloud provider.',
                ),
                OnboardingComponents(
                  onboardingIcon: Icon(
                    Icons.security_update_good_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  onboardingText: 'Keep your wallet secure',
                  subheadingText:
                      'Enable face detection or set a pin for extra security.',
                ),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.5),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Colors.blue,
                ),
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              bottom: 50,
              child: ElevatedButton(
                onPressed: () {}, //_verifyOtp
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 25,
              top: 50,
              child: Text(
                'Login',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


