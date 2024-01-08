import 'package:dokterian_ui/views/home/screens/home/widget/app_bar_widget.dart';
import 'package:dokterian_ui/views/home/screens/home/widget/banner_widget.dart';
import 'package:dokterian_ui/views/home/screens/home/widget/menu_list_widget.dart';
import 'package:dokterian_ui/views/home/screens/home/widget/near_doctor_widget.dart';
import 'package:dokterian_ui/views/home/screens/home/widget/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBarWidget(),
                SizedBox(height: 32),
                BannerWidget(),
                SizedBox(height: 20),
                SearchWidget(),
                SizedBox(height: 20),
                MenuListWidget(),
                SizedBox(height: 32),
                NearDoctorWidget()
              ])),
    ));
  }
}
