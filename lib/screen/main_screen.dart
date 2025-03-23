import 'package:flutter/material.dart';
import 'package:mad/screen/faculty_screen.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/more_screen.dart';
import 'package:mad/screen/news_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> screenList = [
    HomeScreen(),
    FacultyScreen(),
    NewsScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final _navBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.blue,
      ),
      BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Faculty'),
      BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
      BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
    ];
    final _navBar = BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: _navBarItems,
      backgroundColor: Colors.blue,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );

    final screen = Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: _navBar,
    );

    return screen;
  }
}
