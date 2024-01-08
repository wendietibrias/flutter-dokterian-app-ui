import 'package:dokterian_ui/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: HexColor(AppColor.secondary)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(Iconsax.search_normal_14),
              prefixIconColor: HexColor(AppColor.subtitleColor),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: "Search doctor or health issue",
              hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 15,
                      color: HexColor(AppColor.subtitleColor),
                      fontWeight: FontWeight.w400)),
              border: InputBorder.none),
        ));
  }
}
