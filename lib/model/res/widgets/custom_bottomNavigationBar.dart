import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/theme/theme_provider.dart';
import '../constant/app_assets.dart';
import '../constant/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final _isDark = themeProvider.isDarkMode;

    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            AppAssets.logo,
            height: 30,
            color: selectedIndex == 0
                ? (_isDark ? AppColors.appYellowColor : AppColors.appRedColor)
                : (_isDark ? Colors.grey : AppColors.appYellowColor),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 30,
            color: selectedIndex == 1
                ? (_isDark ? AppColors.appYellowColor : AppColors.appRedColor)
                : (_isDark ? Colors.grey : AppColors.appYellowColor),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: selectedIndex == 2
                ? (_isDark ? AppColors.appYellowColor : AppColors.appRedColor)
                : (_isDark ? Colors.grey : AppColors.appYellowColor),
          ),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Color(0xFFEDE7F6),
      onTap: onTap,
    );
  }
}
