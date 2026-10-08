import 'package:evently/core/sources/colors.dart';
import 'package:evently/main_lay_out/favourite/favorite.dart';
import 'package:evently/main_lay_out/home/home.dart';
import 'package:evently/main_lay_out/profile/profile.dart';
import 'package:flutter/material.dart';

class MainLayOut extends StatefulWidget {
  const MainLayOut({super.key});

  @override
  State<MainLayOut> createState() => _MainLayOutState();
}

class _MainLayOutState extends State<MainLayOut> {
  int tappedIndex = 0;
  List<Widget> tabs = [Home(), Favorite(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[tappedIndex],
      bottomNavigationBar: _buildBottomNavBar,
    );
  }
  void _onTap(int newIndex){
    setState(() {
      tappedIndex=newIndex;
    });
  }
  BottomNavigationBar get _buildBottomNavBar{
    return BottomNavigationBar(
      currentIndex: tappedIndex,
      onTap: _onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            tappedIndex == 0 ? Icons.home_filled : Icons.home_outlined,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            tappedIndex == 1 ? Icons.favorite : Icons.favorite_border,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(tappedIndex==2? Icons.person_2:Icons.person_2_outlined),
          label: 'Profile',
        )
      ],
    );
  }
}
