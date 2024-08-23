import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rrr/controllers/navbar_controller/navbar_controller.dart';
import 'package:rrr/views/file_views/file_view.dart';
import 'package:rrr/views/home_view/home_view.dart';
import 'package:rrr/views/online_installment_view/online_installment_view.dart';

import '../../views/complaint_view/complaint_tab_bar.dart';
import '../theme/color.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  final navController = Get.put(NavbarController());
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeView(),
    const FileView(),
    const ComplaintTabBar(),
    const OnlineInstallmentView(),
  ];
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(
          () => _screens.elementAt(navController.selectedIndex.value),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItems(
              () {
                navController.onTapped(0);
              },
              FontAwesomeIcons.house,
              'Home',
              0,
            ),
            _buildNavItems(
              () {
                navController.onTapped(1);
              },
              FontAwesomeIcons.file,
              'File',
              1,
            ),
            _buildNavItems(
              () {
                navController.onTapped(2);
              },
              FontAwesomeIcons.comments,
              'Complaints',
              2,
            ),
            _buildNavItems(
              () {
                navController.onTapped(3);
              },
              FontAwesomeIcons.moneyCheck,
              'Payments',
              3,
            ),
          ],
        ),
      ),
    );
  }

  _buildNavItems(VoidCallback onTap, IconData icon, String text, int index) {
    return Obx(
      () => GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: navController.selectedIndex.value == index
                  ? AppColor.primaryColor
                  : Colors.white,
            ),
            Text(
              text,
              style: TextStyle(
                color: navController.selectedIndex.value == index
                    ? AppColor.primaryColor
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
