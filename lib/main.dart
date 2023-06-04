import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/provider/home_provider.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/comments_screen.dart';
import 'package:project_code/ui/screens/details_screen.dart';
import 'package:project_code/ui/screens/home.dart';
import 'package:project_code/ui/screens/main_tab_screen.dart';
import 'package:project_code/ui/screens/onboarding_screen.dart';
import 'package:project_code/ui/screens/sign_in_up_screen.dart';
import 'package:project_code/ui/screens/success_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>.value(
          value: HomeProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

final darkNotifier = ValueNotifier<bool>(false);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: darkNotifier,
      builder: (BuildContext context, bool isDark, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
            primaryColor: primaryColor,
            backgroundColor: backgroundColor,
          ),
          home: OnbaordingScreen(),
        );
      },
    );
  }
}
