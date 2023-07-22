import 'package:flutter/material.dart';
import 'package:test_logic/screen/Auth/login.dart';
import 'Theme/app_theme.dart';
import 'main_home_page.dart';

void main() {
  runApp(const MainAppNavigationBage());
}

class MainAppNavigationBage extends StatelessWidget {
  const MainAppNavigationBage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'han');
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    //LoginPage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  const Icon(Icons.home_outlined),
            label: 'الرئيسية',
            backgroundColor: AppTheme.colors.color0,
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag_outlined),
            label: 'حقيبة التسوق',
            backgroundColor: AppTheme.colors.color0,
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border_outlined),
            label: 'المفضلة',
            backgroundColor: AppTheme.colors.color0,
          ),
           BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'الحساب',
            backgroundColor: AppTheme.colors.color0,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.colors.color4,
        selectedLabelStyle: const TextStyle(fontFamily: 'han'),
        unselectedItemColor: AppTheme.colors.color2,
        unselectedLabelStyle: const TextStyle(fontFamily: 'han'),
        elevation: 0.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
