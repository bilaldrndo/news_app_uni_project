import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/main_tab_screen.dart';
import 'package:project_code/ui/widgets/primary_button.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  late ConfettiController _controllerTopCenter;

  @override
  void initState() {
    super.initState();
    _controllerTopCenter = ConfettiController(duration: const Duration(seconds: 1));

    Future.delayed(Duration(milliseconds: 1000)).then((value) {
      _controllerTopCenter.play();
    });
  }

  @override
  void dispose() {
    _controllerTopCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hooray!',
                  style: GoogleFonts.poppins(
                    color: primaryColor2,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ).animate().fade(delay: Duration(milliseconds: 500)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Your account is created, let\'s explore some intresting news!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: accentColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ).animate().fade(delay: Duration(milliseconds: 1500)),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: PrimaryButton(
                    textContent: 'Go To Homepage',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return MainTabBarScreen();
                        },
                      ));
                    },
                  ),
                ).animate().fade(delay: Duration(milliseconds: 2500)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              colors: [primaryColor, primaryColor2, accentColor],
              confettiController: _controllerTopCenter,
              blastDirection: pi / 1.2,
              maxBlastForce: 5, // set a lower max blast force
              minBlastForce: 1, // set a lower min blast force
              emissionFrequency: 0.05,
              numberOfParticles: 25, // a lot of particles at once
              gravity: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
