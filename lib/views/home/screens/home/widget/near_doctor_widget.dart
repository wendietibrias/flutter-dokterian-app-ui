import 'package:dokterian_ui/core/app_color.dart';
import 'package:dokterian_ui/models/near_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class NearDoctorWidget extends StatelessWidget {
  const NearDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Near Doctor",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: HexColor(AppColor.titleColor)))),
      const SizedBox(height: 16),
      ListView.separated(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              NearDoctorItem(nearDoctorLists[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemCount: nearDoctorLists.length)
    ]);
  }

  Container NearDoctorItem(NearDoctorModel item) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: HexColor(AppColor.whiteColor)),
      child: Column(
        children: [
          Row(children: [
            Image.asset("assets/images/${item.image}",
                width: 48, height: 48, fit: BoxFit.fill),
            const SizedBox(width: 10),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(item.name,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: HexColor(AppColor.titleColor)))),
                            const SizedBox(height: 6),
                            Text(item.role,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            HexColor(AppColor.subtitleColor))))
                          ]),
                      Row(children: <Widget>[
                        Icon(Iconsax.location,
                            size: 16, color: HexColor(AppColor.subtitleColor)),
                        const SizedBox(width: 8),
                        Text("${item.distance} KM",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor(AppColor.subtitleColor))))
                      ])
                    ]))
          ]),
          const SizedBox(height: 20),
          Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: HexColor("#F5F5F5"))),
          const SizedBox(height: 20),
          Row(children: <Widget>[
            Row(children: [
              Icon(Iconsax.clock,
                  size: 20, color: HexColor(AppColor.yellowColor)),
              const SizedBox(width: 6),
              Text(item.reviews,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: HexColor(AppColor.yellowColor))))
            ]),
            const SizedBox(width: 12),
            Row(children: [
              Icon(Iconsax.clock, size: 20, color: HexColor(AppColor.primary)),
              const SizedBox(width: 6),
              Text("Open at ${item.openTime}",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: HexColor(AppColor.primary))))
            ])
          ])
        ],
      ),
    );
  }
}
