import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_code/theme.dart';

class RoundedIconButton extends StatefulWidget {
  final icon;
  final onTap;
  final paddingRight;

  const RoundedIconButton({
    super.key,
    this.icon,
    this.onTap,
    this.paddingRight = 10.0,
  });

  @override
  State<RoundedIconButton> createState() => _RoundedIconButtonState();
}

class _RoundedIconButtonState extends State<RoundedIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.fromLTRB(7, 10.0, widget.paddingRight, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: primaryColor,
              ),
              width: 33,
              height: 33,
              child: Icon(
                widget.icon,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
