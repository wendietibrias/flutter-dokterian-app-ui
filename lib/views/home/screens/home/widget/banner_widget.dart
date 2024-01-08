import 'package:dokterian_ui/core/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 327 / 138,
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: HexColor(AppColor.primary),
                borderRadius: BorderRadius.circular(12)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: <Widget>[
                    Image.asset("assets/images/doktor1.png",
                        width: 48, height: 48, fit: BoxFit.contain),
                    const SizedBox(width: 12),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Dr.Imran Syahir",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: HexColor("#ffffff")))),
                                    const SizedBox(height: 6),
                                    Text("General Doctor",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: HexColor(
                                                    AppColor.subtitle2Color))))
                                  ]),
                              GestureDetector(
                                  onTap: null,
                                  child: Icon(Iconsax.arrow_right_34,
                                      size: 24, color: HexColor("#ffffff")))
                            ]))
                  ]),
                  const SizedBox(height: 16),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                        color: HexColor(AppColor.whiteColor).withOpacity(0.15)),
                  ),
                  const SizedBox(height: 16),
                  Row(children: [
                    Row(children: <Widget>[
                      Icon(Iconsax.calendar,
                          size: 16, color: HexColor(AppColor.whiteColor)),
                      const SizedBox(width: 7),
                      Text("Sunday, 12 June",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: HexColor(AppColor.whiteColor))))
                    ]),
                    const SizedBox(width: 30),
                    Row(children: <Widget>[
                      Icon(Iconsax.clock,
                          size: 16, color: HexColor(AppColor.whiteColor)),
                      const SizedBox(width: 7),
                      Text("11:00 - 12:00 AM",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: HexColor(AppColor.whiteColor))))
                    ])
                  ])
                ])));
  }
}
