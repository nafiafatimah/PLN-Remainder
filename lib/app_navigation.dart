import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'list_data_petugas.dart';
import 'list_notifikasi.dart';
import 'profile_petugas.dart';

class AppNavigation extends StatefulWidget {
  @override
  _AppNavigationState createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ListDataPetugas(),
    ListNotifikasi(),
    ProfilePetugas(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        height: 70.0,
        items: <Widget>[
          Icon(Icons.list, size: 30, color: Colors.white), // List Data Petugas
          Icon(Icons.notifications, size: 30, color: Colors.white), // List Notifikasi
          Icon(Icons.person, size: 30, color: Colors.white), // Profile
        ],
        color: themeProvider.isDarkMode
            ? Color.fromARGB(255, 42, 44, 60)
            : Color(0xFF78A083),
        buttonBackgroundColor: themeProvider.isDarkMode
            ? Color.fromARGB(255, 42, 44, 60)
            : Color(0xFF78A083),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 800),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
    );
  }
}
