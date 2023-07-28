import 'package:flutter/material.dart';
import 'package:test_logic/screen/tabs/women_tab.dart';

import '../Theme/app_theme.dart';

class TabPageView extends StatelessWidget {
  const TabPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = NavigationController();
    return MaterialApp(
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            bottom: TabBar(
              labelColor: AppTheme.colors.color4,
              unselectedLabelColor: AppTheme.colors.color2,
              indicatorColor: AppTheme.colors.color3,
              indicatorWeight: 1,
              tabs: const [
                Text('نساء'),
                Text('رجال'),
                Text('أطفال'),
              ],
            ),
            title: const Text('السوق العربي'),
          ),
          body: TabBarView(
            children: [
              WomenTab(
                  navigationController: navigationController,
                  pages: const [
                    Text('data 1'),
                    Text('data 2'),
                  ],
                  pagesTitles: const [
                    'data 1',
                    'data 2',
                  ]),
              const Icon(Icons.directions_transit),
              const Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
