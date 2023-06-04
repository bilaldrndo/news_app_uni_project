import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/widgets/icon_button.dart';
import 'package:project_code/ui/widgets/small_news_cube.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _textEditingController;

  bool hasData = false;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController();

    _textEditingController.addListener(() {
      if (_textEditingController.value.text.length > 0) {
        hasData = true;
      } else {
        hasData = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 3,
        title: TextField(
          controller: _textEditingController,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search for news',
            hintStyle: GoogleFonts.poppins(
              color: accentColor,
              fontSize: 18,
            ),
          ),
        ),
        leading: RoundedIconButton(
          icon: Icons.arrow_back,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          RoundedIconButton(
            icon: (_textEditingController.value.text.length > 0) ? Icons.close : Icons.search,
            onTap: (_textEditingController.value.text.length > 0)
                ? () {
                    _textEditingController.clear();
                  }
                : () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: (hasData)
            ? Column(
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
              )
            : SizedBox(),
      ),
    );
  }
}
