import 'package:flutter/material.dart';
import 'package:gocakapp/constant.dart';
import 'package:gocakapp/beranda/berandapage_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  final List<Widget> _container = [
    BerandaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: GocakPalette.blue,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Beranda",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: GocakPalette.blue,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Pesanan",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: GocakPalette.blue,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Inbox",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: GocakPalette.blue,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Akun",
        ),
      ],
    );
  }
}
