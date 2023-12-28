import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/restaurants/restaurant_list_page.dart';
import 'package:flutter_clean_architecture/presentation/settings/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const RestaurantListPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
