import 'package:dokterian_ui/core/app_color.dart';
import 'package:dokterian_ui/models/schedule_list_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

class ScheduleListWidget extends StatefulWidget {
  const ScheduleListWidget({super.key});

  @override
  State<ScheduleListWidget> createState() => _ScheduleListWidgetState();
}

class _ScheduleListWidgetState extends State<ScheduleListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listSchedule.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => scheduleItem(listSchedule[index]),
    );
  }

  Container scheduleItem(ScheduleListModel item) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: HexColor(AppColor.whiteColor),
        ),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Image.asset("assets/images/${item.image}",
                width: 48, height: 48, fit: BoxFit.contain),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 16,
                            color: HexColor(AppColor.titleColor),
                            fontWeight: FontWeight.w700))),
                Text(item.role,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 14,
                            color: HexColor(AppColor.subtitleColor),
                            fontWeight: FontWeight.w400)))
              ],
            )
          ]),
          const SizedBox(height: 20),
          Container(
              height: 1,
              decoration: BoxDecoration(color: HexColor(AppColor.secondary))),
          const SizedBox(height: 20),
          Row(children: <Widget>[
            Row(children: <Widget>[
              Icon(Iconsax.calendar_2,
                  size: 16, color: HexColor(AppColor.subtitleColor)),
              const SizedBox(width: 8),
              Text(item.dayOpen,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: HexColor(AppColor.subtitleColor))))
            ]),
            SizedBox(width: 36),
            Row(children: <Widget>[
              Icon(Iconsax.clock,
                  size: 16, color: HexColor(AppColor.subtitleColor)),
              const SizedBox(width: 8),
              Text(item.openTime,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: HexColor(AppColor.subtitleColor))))
            ])
          ]),
          const SizedBox(height: 20),
          Container(
              width: double.infinity,
              height: 39,
              child: TextButton(
                  onPressed: () {},
                  child: Text("Detail",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: HexColor(AppColor.primary)))),
                  style: TextButton.styleFrom(
                      backgroundColor:
                          HexColor(AppColor.primary).withOpacity(.10))))
        ]));
  }
}
