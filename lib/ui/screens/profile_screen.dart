import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/main.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/sign_in_up_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 0,
        centerTitle: false,
        title: Text(
          'PROFILE',
          style: GoogleFonts.poppins(
            fontSize: 29,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 5),
                      Container(
                        width: 140,
                        height: 140,
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/dummy/profile.png',
                              width: 140,
                              height: 140,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/images/google_shadow.png',
                                width: 45,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Adam Jones',
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const SignInUpScreen();
                            },
                          ));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.logout,
                              color: primaryColor2,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Log Out',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor2,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'SETTINGS',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 3),
                      itemWithSwitch(),
                      SizedBox(height: 8),
                      itemsSmall(
                        Icons.menu_book,
                        'Privacy Policy',
                      ),
                      SizedBox(height: 8),
                      itemsSmall(
                        Icons.legend_toggle_sharp,
                        'Legal',
                      ),
                      SizedBox(height: 8),
                      itemsSmall(
                        Icons.help,
                        'Help',
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'SOCIALS',
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          socialCircle('fb'),
                          socialCircle('tw'),
                          socialCircle('yt'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  '© 2023 BNEWS, All rights reserved',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: accentColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialCircle(String imageName) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Container(
        width: 39,
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: accentColor,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/socials/$imageName.png',
            height: 21,
          ),
        ),
      ),
    );
  }

  Widget itemWithSwitch() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: dividerGrayColorLighter,
        ),
        SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 11),
                Icon(
                  Icons.notifications,
                  color: primaryColor,
                  size: 28,
                ),
                SizedBox(width: 12),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Push Notifications',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[900],
                      ),
                    ),
                    Text(
                      'You can toggle Your news notifications\nstatus here.',
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Switch.adaptive(
              value: isOn,
              focusColor: accentColor,
              activeColor: primaryColor,
              onChanged: (value) {
                setState(() {
                  isOn = !isOn;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 11),
        Container(
          width: double.infinity,
          height: 1,
          color: dividerGrayColorLighter,
        ),
      ],
    );
  }

  bool isOn = true;

  Widget itemsSmall(
    IconData icon,
    String title,
  ) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: dividerGrayColorLighter,
        ),
        SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 11),
                Icon(
                  // Icons.menu_book,
                  icon,
                  color: primaryColor,
                  size: 28,
                ),
                SizedBox(width: 12),
                Text(
                  // 'Privacy Policy',
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.grey[900],
              size: 31,
            ),
          ],
        ),
        SizedBox(height: 11),
        Container(
          width: double.infinity,
          height: 1,
          color: dividerGrayColorLighter,
        ),
      ],
    );
  }
}
