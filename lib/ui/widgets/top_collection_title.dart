import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';

class TopCollectionTitle extends StatelessWidget {
  final title;
  final hasMore;
  final onTap;

  const TopCollectionTitle({
    super.key,
    this.title,
    this.hasMore = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: Row(
            children: [
              Text(
                title.toString().toUpperCase(),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              SizedBox(width: 7),
              Expanded(
                child: Container(
                  height: 2,
                  color: primaryColor,
                ),
              ),
              (hasMore)
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 7),
                        Text(
                          'More',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: primaryColor2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: primaryColor2,
                          size: 18,
                        ),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
