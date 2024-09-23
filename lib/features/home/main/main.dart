import 'package:flutter/material.dart';
import 'package:hapus_ecommerce/preferences/preferences.dart';
import 'package:hapus_ecommerce/features/features.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      icon: Icon(
        icon,
        color: _selectedIndex == index ? CustomColor.primary : const Color(0xff808191),
      ),
    );
  }


  List<Widget> pages = const [
    HomePage(),
    MessagePage(),
    FavoritePage(),
    ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryBackground,
      body: SafeArea(child: pages[_selectedIndex]),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: const Color(0xff38ABBE),
          child: Image.asset('assets/images/cart.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: CustomColor.secondaryBackground,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildItemNav(CustomIcon.home, 0),
              buildItemNav(CustomIcon.message, 1),
              const SizedBox(
                width: 50,
              ),
              buildItemNav(CustomIcon.favorite, 2),
              buildItemNav(CustomIcon.profile, 3),
            ],
          ),
        ),
      ),
    );
  }
}

