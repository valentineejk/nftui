import 'package:flutter/material.dart';
import 'package:nftui/components/my_bottombar.dart';
import 'package:nftui/components/my_tabbar.dart';

import 'components/my_appbar.dart';
import 'recent_tab.dart';
import 'top_tab.dart';
import 'trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchBtn() {}
  void _handleBottom(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  int currentIndex = 0;

  List tabOptions = const [
    ["recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top Nft", TopTab()],
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomBar(
          index: currentIndex,
          onTap: _handleBottom,
        ),
        body: ListView(
          children: [
            MyAppBar(
              onTap: _searchBtn,
              title: 'Explore Collections',
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(tabOptions: tabOptions),
            )
          ],
        ),
      ),
    );
  }
}
