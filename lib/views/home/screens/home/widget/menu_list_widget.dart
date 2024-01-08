import 'package:dokterian_ui/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      MenuItem(
          Icon(Iconsax.sun5, color: HexColor(AppColor.primary)), "Covid 19"),
      MenuItem(Icon(Iconsax.profile_add5, color: HexColor(AppColor.primary)),
          "Doctor"),
      MenuItem(
          Icon(Iconsax.link_26, color: HexColor(AppColor.primary)), "Medicine"),
      MenuItem(Icon(Iconsax.hospital5, color: HexColor(AppColor.primary)),
          "Hospital"),
    ]);
  }

  Flexible MenuItem(Icon IconItem, String title) {
    return Flexible(
        flex: 1,
        fit: FlexFit.tight,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                      color: HexColor(AppColor.secondary),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100))),
                  child: Center(child: IconItem)),
              SizedBox(height: 8),
              Text('$title',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: HexColor(AppColor.subtitleColor),
                          fontSize: 15,
                          fontWeight: FontWeight.w400)))
            ]));
  }
}
