import 'package:flutter/material.dart';

import '../Theme/app_theme.dart';

class TabPageView extends StatelessWidget {
  const TabPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            bottom:  TabBar(
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
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
