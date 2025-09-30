import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:room25/page/home_page.dart';
import 'package:room25/page/search_page.dart';
import 'package:room25/page/settings_page.dart';
import 'package:room25/page/shope_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counterIndex = 0;
  final List<Widget> _page = [
    HomePage(),
    SearchPage(),
    SettingsPage(),
    ShopePage(),
  ];
  void _voidTap(int Index) {
    setState(() {
      _counterIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_counterIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _counterIndex,
        onTap: _voidTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.sp),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30.sp),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30.sp),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop, size: 30.sp),
            label: "shope",
          ),
        ],
      ),
    );
  }
}
