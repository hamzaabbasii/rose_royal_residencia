import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_elevated_button.dart';
import 'package:rrr/utils/widgets/custom_floating_button.dart';
import 'package:rrr/views/file_views/file_tab_bar.dart';

import '../../utils/widgets/custom_drawer.dart';

class FileView extends StatelessWidget {
  const FileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(size: size),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(left: 10, right: 10),
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
                CustomElevatedButton(
                  text: 'Sign In',
                  onPressed: () {},
                  width: size.width * 0.25,
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
              onTap: ()
              {
                Get.to(() => FileTabBar());
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 15),
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: AppColor.primaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                'Reg# 12345678978',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: AppColor.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Username',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.fileInvoice,
                              size: 20,
                              color: AppColor.textSecondaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'OSR-TUU-SSI-676',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: AppColor.textSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 15),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Reg# 12345678978',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.textColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.fileInvoice,
                            size: 20,
                            color: AppColor.textSecondaryColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'OSR-TUU-SSI-676',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: AppColor.textSecondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: size.height * 0.2,
            // ),
            // Center(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         'assets/images/no_page_found.png',
            //         width: size.width * 0.8,
            //       ),
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       const Text(
            //         'Kindly sign in for complete access',
            //         style: TextStyle(
            //             fontFamily: 'Poppins',
            //             fontWeight: FontWeight.w500,
            //             fontSize: 16,
            //             color: AppColor.textSecondaryColor),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}
