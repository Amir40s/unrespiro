import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:unrespiro/constant.dart';
import 'package:unrespiro/model/res/components/appbar.dart';
import 'package:unrespiro/model/res/constant/app_assets.dart';
import 'package:unrespiro/model/res/constant/app_colors.dart';
import 'package:unrespiro/model/res/widgets/app_text.dart.dart';
import 'package:unrespiro/model/res/widgets/hours_text.dart';

import '../../../model/res/routes/routes_name.dart';
import '../../../model/res/widgets/custom_bottomNavigationBar.dart';
import '../../../provider/navigation/navigation_provider.dart';
import '../../../provider/theme/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final _isDark = themeProvider.isDarkMode;

    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     Switch(
      //       value: themeProvider.isDarkMode,
      //       onChanged: (value) {
      //         themeProvider.toggleTheme();
      //       },
      //     ),
      //   ],
      // ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: navigationProvider.selectedIndex,
        onTap: (index) {
          navigationProvider.setIndex(index);
        },
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              Container(
                height: Get.height / 1.7,
                width: double.infinity,
                decoration: _isDark
                    ? BoxDecoration(
                        color: AppColors.appBarColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(200),
                          bottomLeft: Radius.circular(200),
                        ),
                      )
                    : BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/profile_backShadow.webp',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(200),
                          bottomLeft: Radius.circular(200),
                        ),
                      ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    AppTextWidget(
                      text: 'Natalia',
                      fontSize: 16,
                      color: _isDark ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppTextWidget(
                      text: 'Nata03@gmail.com',
                      color: AppColors.appBarColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 18,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _isDark
                            ? AppColors.appYellowColor
                            : AppColors.appRedColor,
                      ),
                      child: AppTextWidget(text: 'PRO'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HoursText(
                              text: '32',
                              text2: 'Hours',
                              text3: 'Saved',
                              text4: 'hrs'),
                          HoursText(
                              text: '60',
                              text2: 'Attempts',
                              text3: 'blocked',
                              text4: 'hrs'),
                          HoursText(
                              text: '09',
                              text2: 'Blocked',
                              text3: 'apps',
                              text4: 'hrs')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _isDark
                  ? AppbarWidget(
                      text: 'PROFILE',
                      fontSize: 16,
                      color: primaryColor,
                      image: AppAssets.profileBg,
                      textColor: _isDark ? Colors.white : Colors.black,
                      icon: Icons.arrow_back_ios,
                      onTap: () {
                        log('message');
                        Get.back();
                        Navigator.pop(context);
                      },
                      //isGradient: _isDark ?  true : false,
                      height: 170,
                      topRight: 0.0,
                      topLeft: 0.0,
                      bottomLeft: Get.width / 1.5,
                      bottomRight: Get.width / 1.5,
                    )
                  : AppbarWidget(
                      text: 'PROFILE',
                      fontSize: 16,
                      color: primaryColor,
                      image: AppAssets.profileAppBarWhite,
                      textColor: _isDark ? Colors.white : Colors.black,
                      icon: Icons.arrow_back_ios,
                      onTap: () {
                        log('message');
                        Get.back();
                        Navigator.pop(context);
                      },
                      // isGradient: _isDark ?  true : false,
                      height: 170, bottomLeft: Get.width / 1.5,
                      bottomRight: Get.width / 1.5,
                      topRight: 0.0,
                      topLeft: 0.0,
                    ),
              Image.asset(
                _isDark
                    ? AppAssets.profileShadow
                    : AppAssets.profileAppBarWhiteShadow,
                fit: BoxFit.cover,
              ),
              Container(
                height: Get.height / 2.2,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Positioned(
                        top: Get.height * 0.15,
                        left: Get.width * 0.45,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(AppAssets.girl),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: _isDark
                                    ? AppColors.appYellowColor
                                    : AppColors.appRedColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.asset(
                                  AppAssets.pencil,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: Get.height / 1.6,
                child: Container(
                    height: Get.height,
                    width: Get.width / 0.89,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 15),
                          child: Column(
                            children: [
                              buildListTile(
                                  'Edit Account',
                                  () {},
                                  Colors.black,
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  )),
                              buildListTile(
                                'Change Plan',
                                () {},
                                Colors.black,
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              ),
                              buildListTile('Metrics', () {
                                Get.toNamed(RoutesName.metricsScreen);
                              },
                                  Colors.black,
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                  )),
                              buildListTile(
                                'Friends',
                                () {},
                                Colors.grey,
                                Container(
                                  height: 15,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: _isDark
                                        ? AppColors.appYellowColor
                                        : AppColors.appRedColor,
                                  ),
                                  child: Center(
                                      child: AppTextWidget(
                                    fontSize: 10,
                                    text: 'Coming soon',
                                    color: Colors.white,
                                  )),
                                ),
                              ),
                              buildListTile(
                                  'Edit Account',
                                  () {},
                                  Colors.grey,
                                  Container(
                                    height: 15,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: _isDark
                                          ? AppColors.appYellowColor
                                          : AppColors.appRedColor,
                                    ),
                                    child: Center(
                                        child: AppTextWidget(
                                      fontSize: 12,
                                      text: 'Coming soon',
                                      color: Colors.white,
                                    )),
                                  )),
                              Container(
                                alignment: Alignment.centerRight,
                                height: 25,
                                width: 75,
                                child: Switch(
                                  value: themeProvider.isDarkMode,
                                  onChanged: (value) {
                                    themeProvider.toggleTheme();
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListTile(String text, Function() onTap, Color color, Widget) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextWidget(
                text: text,
                fontSize: 14,
                color: color,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                width: 10,
              ),
              Widget
              //Icon(Icons.arrow_forward_ios, size: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
