import 'package:dokterian_ui/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarMenuWidget extends StatefulWidget {
  const AppBarMenuWidget({super.key});

  @override
  State<AppBarMenuWidget> createState() => _AppBarMenuWidgetState();
}

class _AppBarMenuWidgetState extends State<AppBarMenuWidget> {
  int _currentIndex = 0;
  List<String> menuLists = [
    "Canceled schedule",
    "Upcoming schedule",
    "Completed schedule"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      backgroundColor: _currentIndex == index
                          ? HexColor(AppColor.primary).withOpacity(.10)
                          : HexColor(AppColor.secondary)),
                  onPressed: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Text(menuLists[index],
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        color: _currentIndex == index
                            ? HexColor(AppColor.primary)
                            : HexColor(AppColor.subtitleColor),
                        fontWeight: FontWeight.w500,
                        fontSize: _currentIndex == index ? 15 : 13,
                      ))));
            },
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemCount: menuLists.length));
  }
}
