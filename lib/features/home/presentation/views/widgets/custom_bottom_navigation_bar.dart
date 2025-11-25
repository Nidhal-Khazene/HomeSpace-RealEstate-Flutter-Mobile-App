import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_space/core/utils/assets.dart';
import 'package:home_space/core/utils/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../home_view.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  static const routeName = "/bottomNav";

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> screens = const [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 2,
              blurRadius: 25,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          child: NavigationBar(
            indicatorColor: Colors.transparent,
            height: 72,
            backgroundColor: Colors.white,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationDestination(
                icon: Center(
                  child: Icon(
                    Iconsax.home_2_copy,
                    size: 20,
                    color: _selectedIndex == 0
                        ? ColorsData.kSecondaryColor
                        : ColorsData.kFontPrimaryColor,
                  ),
                ),
                label: '',
              ),
              NavigationDestination(
                icon: Center(
                  child: SvgPicture.asset(
                    Assets.assetsImagesIconsHeartBlackOutlinedIcon,
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 1
                          ? ColorsData.kSecondaryColor
                          : ColorsData.kFontPrimaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                label: "",
              ),
              NavigationDestination(
                icon: Center(
                  child: SvgPicture.asset(
                    Assets.assetsImagesIconsMessageminus,
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 2
                          ? ColorsData.kSecondaryColor
                          : ColorsData.kFontPrimaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                label: '',
              ),
              NavigationDestination(
                icon: Center(
                  child: Icon(
                    Iconsax.setting_2_copy,
                    size: 20,
                    color: _selectedIndex == 3
                        ? ColorsData.kSecondaryColor
                        : ColorsData.kFontPrimaryColor,
                  ),
                ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
