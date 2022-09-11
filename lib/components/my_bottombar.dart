import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);
  final int index;
  final Function(int?) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      unselectedItemColor: Colors.grey[300],
      selectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Home'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.favorite), label: 'Favourites'),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person_add), label: 'Profiile'),
      ],
    );
  }
}
