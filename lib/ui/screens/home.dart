import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/data/data.dart';
import 'package:project_code/provider/home_provider.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/search_screen.dart';
import 'package:project_code/ui/screens/top_title_small_cells_screen.dart';
import 'package:project_code/ui/widgets/big_news_cube.dart';
import 'package:project_code/ui/widgets/icon_button.dart';
import 'package:project_code/ui/widgets/side_bar.dart';
import 'package:project_code/ui/widgets/slide_bar/slider.dart';
import 'package:project_code/ui/widgets/small_news_cube.dart';
import 'package:project_code/ui/widgets/top_collection_title.dart';
import 'package:provider/provider.dart';

enum HomeScreenStatus {
  HOME,
  WORLD,
  ECONOMY,
  BUSINESS,
  POLITICS,
  TECH,
  SPORTS,
  ENTERTAINMENT,
  RECOMMENDED,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 7, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (tabController.indexIsChanging) {
      setState(() {});
    }
  }

  GlobalKey<SliderMenuContainerState> _key = GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SliderMenuContainer(
        appBarHeight: 0,
        isShadow: true,
        shadowColor: Colors.black12,
        shadowBlurRadius: 20,
        appBarColor: Colors.white,
        key: _key,
        imageString: 'assets/images/logo.png',
        animationDuration: 200,
        sliderMenuOpenSize: 245,
        actionIcon: RoundedIconButton(
          icon: Icons.search,
          onTap: () async {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const SearchScreen();
              },
            ));
          },
        ),
        sliderMenu: SideBar(
          sliderKey: _key,
        ),
        sliderMain: (provider.status == HomeScreenStatus.HOME)
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BigNewsCube(),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TopCollectionTitle(
                            title: 'RECOMMENDED',
                            onTap: () {
                              provider.status = HomeScreenStatus.RECOMMENDED;
                              setState(() {});
                            },
                          ),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TopCollectionTitle(title: 'CATEGORIES', hasMore: false),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Container(
                              height: 35,
                              child: TabBar(
                                isScrollable: true,
                                labelPadding: EdgeInsets.fromLTRB(13, 0, 13, 0),
                                labelStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                unselectedLabelStyle: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                                indicatorColor: Colors.red,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10), // Creates border
                                  color: primaryColor,
                                ),
                                // indicatorSize: TabBarIndicatorSize.tab,
                                labelColor: Colors.white,
                                unselectedLabelColor: primaryColor2,
                                tabs: buildTabs(),
                                controller: tabController,
                              ),
                            ),
                          ),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SmallNewsCube(),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              )
            : TopTitleSmallCellsScreen(
                topTitle: provider.status.toString().split('.')[1],
              ),
      ),
    );
  }

  List<Widget> buildTabs() {
    List<Widget> listOfTabs = [];

    allCategries.forEach((element) {
      listOfTabs.add(
        Tab(
          text: element,
        ),
      );
    });
    return listOfTabs;
  }
}
