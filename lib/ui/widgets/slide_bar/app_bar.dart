import 'package:flutter/material.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/widgets/icon_button.dart';

import 'slider_direction.dart';

class SliderAppBar extends StatelessWidget {
  final EdgeInsets appBarPadding;
  final Color appBarColor;
  final Widget? drawerIcon;
  final Color splashColor;
  final Color drawerIconColor;
  final double drawerIconSize;
  final double appBarHeight;
  final AnimationController animationController;
  final VoidCallback onTap;
  final Widget title;
  final bool isTitleCenter;
  final Widget? trailing;
  final SlideDirection slideDirection;
  final actionIcon;
  final onTapActionIcon;
  final imageString;
  final onTapLogo;

  const SliderAppBar({
    Key? key,
    this.appBarPadding = const EdgeInsets.only(top: 24),
    this.appBarColor = Colors.blue,
    this.drawerIcon,
    this.splashColor = Colors.black,
    this.drawerIconColor = Colors.black,
    this.drawerIconSize = 28,
    required this.animationController,
    required this.onTap,
    required this.title,
    required this.isTitleCenter,
    this.trailing,
    required this.slideDirection,
    required this.appBarHeight,
    this.actionIcon,
    this.onTapActionIcon,
    this.imageString,
    this.onTapLogo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      elevation: 3,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      foregroundColor: Theme.of(context).primaryColor,
      title: GestureDetector(
        onTap: onTapLogo,
        child: Image.asset(
          imageString,
          height: 25,
        ),
      ),
      leading: Column(
        children: [
          GestureDetector(
            onTap: () => onTap(),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: primaryColor,
                ),
                width: 33,
                height: 33,
                child: Center(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    color: Colors.white,
                    size: 22,
                    progress: animationController,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      actions: [actionIcon],
      // backgroundColor: appBarColor,
      // height: appBarHeight,
      // padding: appBarPadding,
      // color: appBarColor,
      // child: Row(
      //   children: appBar(),
      // ),
      // title: Image.asset(
      //   'assets/images/faktor_logo.png',
      //   width: 110,
      // ),
    );
  }

  List<Widget> appBar() {
    List<Widget> list = [
      drawerIcon ??
          IconButton(
            splashColor: splashColor,
            icon: AnimatedIcon(icon: AnimatedIcons.menu_close, color: drawerIconColor, size: drawerIconSize, progress: animationController),
            onPressed: () => onTap(),
          ),
      Expanded(
        child: isTitleCenter
            ? Center(
                child: title,
              )
            : title,
      ),
      trailing ??
          const SizedBox(
            width: 35,
          ),
    ];

    if (slideDirection == SlideDirection.RIGHT_TO_LEFT) {
      return list.reversed.toList();
    }
    return list;
  }
}
