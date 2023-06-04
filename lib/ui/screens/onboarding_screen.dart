import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/loading_screen.dart';
import 'package:project_code/ui/screens/sign_in_up_screen.dart';
import 'package:project_code/ui/widgets/primary_button.dart';
import 'package:project_code/ui/widgets/secondary_button.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({super.key});

  @override
  State<OnbaordingScreen> createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  int _selectedIndex = 1;

  bool isAtTheEnd = false;
  bool isAtBeginning = true;

  void increaseIndex() {
    if (_selectedIndex < 3) {
      _selectedIndex++;
    }
    setState(() {});
    print(_selectedIndex);
  }

  void decreaseIndex() {
    if (_selectedIndex > 1) {
      _selectedIndex--;
    }
    setState(() {});

    print(_selectedIndex);
  }

  List topTitles = [
    'Simple Feed Content',
    'News Recommendation System powered by AI',
    'Save Interesting Articles for later',
  ];

  List bottomTitles = [
    'The feed content is laid out simply for easy navigation with the newest news content added every hour.',
    'New recommended news will be served to You based on similar news articles that You have read before.',
    'Don’t have time or are not finished with reading an interesting article, save it for later by bookmarking it!',
  ];

  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeIn,
            crossFadeState: (isLoading == true) ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            firstChild: const LoadingScreen(),
            secondChild: SafeArea(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Container(
                      child: Image.asset(
                        'assets/images/onboarding_${_selectedIndex}.png',
                        height: 470,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ).animate().fade(delay: Duration(milliseconds: 500)),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  topTitles[_selectedIndex - 1],
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ).animate().fade(delay: Duration(milliseconds: 1000)),
                                SizedBox(height: 4),
                                Text(
                                  bottomTitles[_selectedIndex - 1],
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: primaryColor2,
                                  ),
                                ).animate().fade(delay: Duration(milliseconds: 1500))
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildIndicators().animate().fade(delay: Duration(milliseconds: 2000)),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    (_selectedIndex != 1)
                                        ? SecondaryButton(
                                            textContent: "Back",
                                            onTap: () {
                                              decreaseIndex();
                                            },
                                          ).animate().fade(delay: Duration(milliseconds: 200))
                                        : SizedBox(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    PrimaryButton(
                                      textContent: (_selectedIndex == 3) ? "Finish" : "Next",
                                      onTap: () {
                                        if (_selectedIndex == 3) {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) {
                                              return const SignInUpScreen();
                                            },
                                          ));
                                        }
                                        increaseIndex();
                                      },
                                    ).animate().fade(delay: Duration(milliseconds: 2500)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildIndicators() {
    return Row(
      children: [
        _indicator(_selectedIndex == 1),
        _indicator(_selectedIndex == 2),
        _indicator(_selectedIndex == 3),
      ],
    );
  }

  Widget _indicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? primaryColor : accentColor,
        ),
      ),
    );
  }
}
