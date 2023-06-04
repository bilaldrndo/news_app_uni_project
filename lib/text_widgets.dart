import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/theme.dart';

class XTextSmall extends StatelessWidget {
  final text;
  final color;

  const XTextSmall({
    super.key,
    this.text,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

class TextSmall extends StatelessWidget {
  final text;
  final color;

  const TextSmall({
    super.key,
    this.text,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

class TextMedium extends StatelessWidget {
  final text;
  final color;

  const TextMedium({
    super.key,
    this.text,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

class TextLinkMedium extends StatelessWidget {
  final text;
  final color;

  const TextLinkMedium({
    super.key,
    this.text,
    this.color = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
