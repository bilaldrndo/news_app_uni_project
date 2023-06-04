import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/data/data.dart';
import 'package:project_code/provider/home_provider.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/home.dart';
import 'package:project_code/ui/widgets/gray_line.dart';
import 'package:project_code/ui/widgets/slide_bar/slider.dart';
import 'package:provider/provider.dart';

class SideBar extends StatelessWidget {
  final GlobalKey<SliderMenuContainerState> sliderKey;

  const SideBar({
    Key? key,
    required this.sliderKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                'SELECT A CATEGORY',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              categoryItem(HomeScreenStatus.HOME, provider),
              categoryItem(HomeScreenStatus.RECOMMENDED, provider),
              categoryItem(HomeScreenStatus.WORLD, provider),
              categoryItem(HomeScreenStatus.ECONOMY, provider),
              categoryItem(HomeScreenStatus.BUSINESS, provider),
              categoryItem(HomeScreenStatus.POLITICS, provider),
              categoryItem(HomeScreenStatus.TECH, provider),
              categoryItem(HomeScreenStatus.SPORTS, provider),
              categoryItem(HomeScreenStatus.ENTERTAINMENT, provider),
              // ListView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   padding: EdgeInsets.all(0),
              //   itemCount: allCategries.length,
              //   itemBuilder: (context, index) {
              //     return categoryItem(allCategries[index].toUpperCase(), );
              //   },
              // ),
              const GrayLine(),
              const GrayLine(),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryItem(HomeScreenStatus status, HomeProvider provider) {
    bool isSelected = (provider.status == status);

    return GestureDetector(
      onTap: () {
        sliderKey.currentState!.closeDrawer();
        provider.status = status;
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const GrayLine(),
          Container(
            color: isSelected ? primaryColor2 : Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                GrayLine(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  child: Text(
                    status.toString().split('.')[1],
                    style: GoogleFonts.poppins(
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                      fontSize: 15,
                      color: isSelected ? Colors.white : primaryColor2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
