import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unrespiro/screens/focus/focus_ScreenO.dart';
import 'package:unrespiro/screens/home/home_screen.dart';
import 'package:unrespiro/screens/menu/profile/profile_screen.dart';

import '../../model/res/constant/app_assets.dart';
import '../../model/res/constant/app_colors.dart';
import '../../model/res/widgets/custom_bottomNavigationBar.dart';
import '../../provider/navigation/navigation_provider.dart';
import '../../provider/theme/theme_provider.dart';
import '../menu/menu_screen.dart';
import 'instagram/instagram.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final _isDark = themeProvider.isDarkMode;

    return Scaffold(
      body: IndexedStack(
        index: navigationProvider.selectedIndex,
         children: [
          FocusScreenO(),
       HomeScreen(),
      MenuScreen(),
      ProfileScreen(),
      ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: navigationProvider.selectedIndex,
        onTap: (index) {
          navigationProvider.setIndex(index);
        },
      ),
    );
  }
}
