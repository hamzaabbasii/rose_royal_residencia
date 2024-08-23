import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_drawer.dart';
import 'package:rrr/utils/widgets/custom_navbar.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(size: size),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const FaIcon(FontAwesomeIcons.bars),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Notifications', // Replace with your text
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    minimumSize: const Size(100, 45),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'Mark all seen',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.height * 0.025,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFE6BA),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('07:45 pm'),),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: size.width * 0.2,
                            height: size.height * 0.025,
                            decoration: BoxDecoration(
                              color: const Color(0xFFBAEAFF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('09/04/2023')),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
