import 'package:dokterian_ui/views/home/screens/schedule/widgets/app_bar_menu_widget.dart';
import 'package:dokterian_ui/views/home/screens/schedule/widgets/schedule_list_widget.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
          child: Column(children: <Widget>[
            AppBarMenuWidget(),
            SizedBox(height: 45),
            ScheduleListWidget()
          ]),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 35)),
    ));
  }
}
