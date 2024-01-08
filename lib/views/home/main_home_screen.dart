import 'package:dokterian_ui/views/home/screens/home/home_screen.dart';
import 'package:dokterian_ui/views/home/screens/schedule/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:dokterian_ui/core/app_color.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

List<Widget> bodyApps = [const HomeScreen(), const ScheduleScreen()];

class MainScreenHome extends StatefulWidget {
  const MainScreenHome({super.key});

  @override
  State<MainScreenHome> createState() => _MainScreenHomeState();
}

class _MainScreenHomeState extends State<MainScreenHome> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodyApps[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: GNav(
              backgroundColor: HexColor(AppColor.whiteColor),
              padding: const EdgeInsets.all(12),
              onTabChange: (index) {
                print(index);
                setState(() {
                  _currentIndex = index;
                });
              },
              gap: 8,
              activeColor: HexColor(AppColor.primary),
              color: HexColor(AppColor.subtitleColor),
              tabBackgroundColor: HexColor(AppColor.primary).withOpacity(0.12),
              tabs: [
                GButton(
                    icon: _currentIndex == 0 ? Iconsax.home5 : Iconsax.home,
                    text: "Home"),
                GButton(
                    icon: _currentIndex == 1
                        ? Iconsax.calendar_25
                        : Iconsax.calendar_2,
                    text: "Schedule"),
                GButton(icon: Iconsax.message, text: "Message"),
                GButton(icon: Iconsax.profile_tick, text: "Profile")
              ]),
        ));
  }
}
