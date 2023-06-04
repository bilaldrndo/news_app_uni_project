import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/comments_screen.dart';
import 'package:project_code/ui/widgets/big_news_cube.dart';
import 'package:project_code/ui/widgets/icon_button.dart';
import 'package:project_code/ui/widgets/top_title_with_small_cells.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          height: 24,
        ),
        leading: RoundedIconButton(
          icon: Icons.arrow_back,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          RoundedIconButton(
            icon: Icons.bookmark_border,
            paddingRight: 3.0,
          ),
          RoundedIconButton(
            icon: Icons.share,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BigNewsCube(),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'The Pentagon called the object, which has flown from Montana to Kansas, an “intelligence gathering” balloon. Beijing said it was used mainly for weather research and had strayed off course.',
                          style: TextStyle(
                            fontFamily: "Georgia",
                            fontSize: 18,
                            height: 1.3,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'WASHINGTON — Secretary of State Antony J. Blinken on Friday canceled a weekend trip to Beijing after a Chinese spy balloon was sighted above the Rocky Mountain state of Montana, igniting a frenzy of media coverage and political commentary over a machine that the Pentagon said posed no threat to the United States.',
                          style: TextStyle(
                            fontFamily: "Georgia",
                            fontSize: 18,
                            height: 1.3,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Image.asset(
                          'assets/images/dummy/content.png',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'WASHINGTON — Secretary of State Antony J. Blinken on Friday canceled a weekend trip to Beijing after a Chinese spy balloon was sighted above the Rocky Mountain state of Montana, igniting a frenzy of media coverage and political commentary over a machine that the Pentagon said posed no threat to the United States.',
                          style: TextStyle(
                            fontFamily: "Georgia",
                            fontSize: 18,
                            height: 1.3,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const CommentsScreen();
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: primaryColor,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.comment_outlined,
                            size: 20,
                            color: primaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'See All Comments (100)',
                            style: GoogleFonts.poppins(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TopTitleWithSmallCells(
                title: 'IN THE SAME CATEGORY',
                numberOfCells: 2,
              ),
              SizedBox(height: 30),
              TopTitleWithSmallCells(
                title: 'MOST READ',
                numberOfCells: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
