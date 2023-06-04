import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/details_screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BigNewsCube extends StatelessWidget {
  const BigNewsCube({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/dummy/ship.png',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 12),
              Text(
                'WORLD',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: primaryColor2,
                  height: 1,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing el',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  height: 1.3,
                ),
              ),
              SizedBox(height: 7),
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
                          fontSize: 16,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: accentColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
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
