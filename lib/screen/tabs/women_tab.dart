import 'package:flutter/material.dart';
import 'package:test_logic/Theme/app_theme.dart';

class WomenTab extends StatefulWidget {
  const WomenTab({
    super.key,
    required this.navigationController,
    required this.pages,
    required this.pagesTitles,
  });
  final NavigationController navigationController;
  final List<Widget> pages;
  final List<String> pagesTitles;

  @override
  State<WomenTab> createState() => _WomenTabState();
}

class _WomenTabState extends State<WomenTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: CustomDrawer(
              navigationController: widget.navigationController,
              drawerItems: widget.pagesTitles,
              onIndexChanged: (index) {
                setState(() {
                  widget.navigationController.navigateToTab(index);
                });
              },
            ),
          ),
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: widget.navigationController.pageController,
              onPageChanged: (index) {
                widget.navigationController.navigateToTab(index);
              },
              itemBuilder: (context, index) => Navigator(
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(
                    builder: (context) {
                      return widget.pages[index];
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  final NavigationController navigationController;
  final List<String> drawerItems;
  final Function(int) onIndexChanged; // Add the callback function

  const CustomDrawer({
    super.key,
    required this.navigationController,
    required this.drawerItems,
    required this.onIndexChanged, // Add the callback function to the constructor
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int _selectedIndex = 0; // Local selectedIndex state

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the local state
      widget.onIndexChanged(index); // Call the callback function
      widget.navigationController.navigateToTab(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.drawerItems.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            _onItemTapped(index);
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            color: _selectedIndex == index
                ? AppTheme.colors.color2
                : Colors.white, // Use local selectedIndex state here
            child: Text(widget.drawerItems[index]),
          ),
        );
      },
    );
  }
}

class NavigationController {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  void setPageController(PageController pageController) {
    _pageController.dispose();
    _pageController = pageController;

    // Add a listener to the PageController to update the index when the page changes
    _pageController.addListener(() {
      int newIndex = _pageController.page!.round();
      if (_selectedIndex != newIndex) {
        _selectedIndex = newIndex;
      }
    });
  }

  void dispose() {
    _pageController.dispose();
  }

  int get selectedIndex => _selectedIndex;

  PageController get pageController => _pageController;

  void navigateToTab(int index) {
    if (_selectedIndex != index) {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
