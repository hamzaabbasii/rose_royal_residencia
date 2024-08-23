import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/widgets/custom_elevated_button.dart';
import 'package:rrr/views/file_views/detail_file_view.dart';
import 'package:rrr/views/file_views/payment_file_view.dart';
import 'package:rrr/views/file_views/schedule_file_view.dart';

import '../../utils/theme/color.dart';
import '../../utils/widgets/custom_drawer.dart';
import '../../utils/widgets/custom_floating_button.dart';

class FileTabBar extends StatefulWidget {
  const FileTabBar({super.key});

  @override
  State<FileTabBar> createState() => _FileTabBarState();
}

class _FileTabBarState extends State<FileTabBar>
    with SingleTickerProviderStateMixin {
  final bool isLoggedIn = false;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
                isLoggedIn
                    ? ElevatedButton(
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
                      )
                    : Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const FaIcon(FontAwesomeIcons.bell),
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const FaIcon(FontAwesomeIcons.message),
                              Positioned(
                                  right: -2,
                                  top: 0,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Card(
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.primaryColor, width: 2),
                ),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Username',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Residential, 7 Marla',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        CustomElevatedButton(text: 'View Ledger', onPressed: (){}, width: size.width * 0.25, height: 40,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  icon: FaIcon(FontAwesomeIcons.folder),
                  text: 'Details',
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.calendar),
                  text: 'Schedule',
                ),
                Tab(
                  icon: FaIcon(FontAwesomeIcons.moneyBill),
                  text: 'Payments',
                ),
              ],
              labelColor: AppColor.primaryColor,
              unselectedLabelColor: AppColor.textSecondaryColor,
              indicatorColor: AppColor.primaryColor,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            //NewWidget(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  DetailsFileView(),
                  ScheduleFileView(),
                  PaymentFileView(),
                ],
              ),
            ),

            // Center(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //           Image.asset('assets/images/no_page_found.png', width: size.width * 0.8,),
            //           const SizedBox(height: 20,),
            //           const Text('Kindly sign in for complete access',
            //             style: TextStyle(fontFamily: 'Poppins',
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16,
            //                 color: AppColor.textSecondaryColor),),
            //
            //
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
