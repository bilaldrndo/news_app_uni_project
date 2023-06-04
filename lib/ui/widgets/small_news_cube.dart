import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/details_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SmallNewsCube extends StatelessWidget {
  const SmallNewsCube({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return DetailsScreen();
          },
        ));
      },
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 98,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/dummy/small.png',
                      width: 110,
                      height: 98,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 7),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'WORLD',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor2,
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing el',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  height: 1.3,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/clock_icon.png',
                                    width: 17,
                                    color: accentColor,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '2 min',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: accentColor,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 15),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/profile_active.png',
                                    width: 17,
                                    color: accentColor,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'J. K. Zimmer',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: accentColor,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 1,
                color: dividerGrayColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
