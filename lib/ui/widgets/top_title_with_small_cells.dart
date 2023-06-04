import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_code/ui/widgets/small_news_cube.dart';
import 'package:project_code/ui/widgets/top_collection_title.dart';

class TopTitleWithSmallCells extends StatelessWidget {
  final title;
  final numberOfCells;

  const TopTitleWithSmallCells({
    super.key,
    this.title,
    this.numberOfCells,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TopCollectionTitle(
            title: title,
            hasMore: false,
          ),
          Column(children: listOfSmallNews()),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  List<Widget> listOfSmallNews() {
    final list = List<int>.generate(numberOfCells, (i) => i + 1);
    List<Widget> itemsList = [];

    list.forEach((element) {
      itemsList.add(SmallNewsCube());
    });

    return itemsList;
  }
}
