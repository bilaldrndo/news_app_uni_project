import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:project_code/ui/screens/main_tab_screen.dart';
import 'package:project_code/ui/screens/success_screen.dart';

class SignInUpScreen extends StatefulWidget {
  const SignInUpScreen({super.key});

  @override
  State<SignInUpScreen> createState() => _SignInUpScreenState();
}

class _SignInUpScreenState extends State<SignInUpScreen> {
  void naviagteToSuccessScreen() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return SuccessScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HELLO!',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                  color: primaryColor,
                ),
              ).animate().fade(delay: Duration(milliseconds: 500)),
              SizedBox(height: 3),
              Text(
                'Please sign in with Your preferred Social Media Account to Continue!',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: accentColor,
                ),
              ).animate().fade(delay: Duration(milliseconds: 1000)),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  naviagteToSuccessScreen();
                },
                child: Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          width: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Continue with Facebook",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: Duration(milliseconds: 2000)),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  naviagteToSuccessScreen();
                },
                child: Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: backgroundColor,
                      border: Border.all(
                        width: 0.5,
                        color: Colors.grey,
                      )),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Continue with Google",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: Duration(milliseconds: 2000)),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  naviagteToSuccessScreen();
                },
                child: Container(
                  width: double.infinity,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/apple.png',
                          width: 23,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Continue with Apple",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animate().fade(delay: Duration(milliseconds: 2000)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
