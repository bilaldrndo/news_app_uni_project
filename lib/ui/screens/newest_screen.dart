import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/search_screen.dart';
import 'package:project_code/ui/widgets/icon_button.dart';
import 'package:project_code/ui/widgets/small_news_cube.dart';

class NewestAndBookmarkScreen extends StatefulWidget {
  final bool isNewest;

  const NewestAndBookmarkScreen({
    super.key,
    this.isNewest = true,
  });

  @override
  State<NewestAndBookmarkScreen> createState() => _NewestAndBookmarkScreenState();
}

class _NewestAndBookmarkScreenState extends State<NewestAndBookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 0,
        title: Text(
          widget.isNewest ? 'NEWEST' : 'BOOKMARKS',
          style: GoogleFonts.poppins(
            fontSize: 29,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          RoundedIconButton(
            icon: Icons.search,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const SearchScreen();
                },
              ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SmallNewsCube(),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
