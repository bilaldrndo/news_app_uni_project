import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_code/ui/widgets/small_news_cube.dart';
import 'package:project_code/ui/widgets/top_collection_title.dart';

class TopTitleSmallCellsScreen extends StatefulWidget {
  final topTitle;
  const TopTitleSmallCellsScreen({
    super.key,
    this.topTitle,
  });

  @override
  State<TopTitleSmallCellsScreen> createState() => _TopTitleSmallCellsScreenState();
}

class _TopTitleSmallCellsScreenState extends State<TopTitleSmallCellsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TopCollectionTitle(title: widget.topTitle.toString().toUpperCase(), hasMore: false),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SmallNewsCube(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
