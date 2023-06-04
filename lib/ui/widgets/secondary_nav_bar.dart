import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_code/text_widgets.dart';
import 'package:project_code/ui/widgets/back_btn.dart';

class SecondaryNavBar extends StatelessWidget with PreferredSizeWidget {
  final leading;
  final title;
  const SecondaryNavBar({
    super.key,
    this.leading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: leading,
      centerTitle: true,
      title: TextLinkMedium(
        text: title,
        color: Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
