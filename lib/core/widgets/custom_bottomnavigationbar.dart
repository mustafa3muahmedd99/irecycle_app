import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: currentIndex,
      items: [
        CurvedNavigationBarItem(
          child: Icon(
            Icons.home_outlined,
            color:
                currentIndex == 0
                    ? AppTheme.light.colorScheme.primary
                    : Colors.white,
          ),
          label: 'Home',
          labelStyle: TextStyle(color: Colors.white),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.account_balance_wallet_outlined,
            color:
                currentIndex == 1
                    ? AppTheme.light.colorScheme.primary
                    : Colors.white,
          ),
          label: 'Balance',
          labelStyle: TextStyle(color: Colors.white),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.location_on_outlined,
            color:
                currentIndex == 2
                    ? AppTheme.light.colorScheme.primary
                    : Colors.white,
          ),
          label: 'Stores',
          labelStyle: TextStyle(color: Colors.white),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            Icons.person_outline_outlined,
            color:
                currentIndex == 3
                    ? AppTheme.light.colorScheme.primary
                    : Colors.white,
          ),
          label: 'Profile',
          labelStyle: TextStyle(color: Colors.white),
        ),
      ],
      color: AppTheme.light.colorScheme.primary,
      buttonBackgroundColor: AppTheme.light.colorScheme.secondary,
      backgroundColor: AppTheme.light.colorScheme.secondary,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: onTap,
    );
  }
}
