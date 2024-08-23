import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_floating_button.dart';
import 'package:rrr/views/complaint_view/complaints_view.dart';
import 'package:rrr/views/message_view/message_view.dart';
import '../../utils/widgets/custom_drawer.dart';
import '../notification_view/notification_view.dart';

class ComplaintTabBar extends StatefulWidget {
  const ComplaintTabBar({super.key});

  @override
  State<ComplaintTabBar> createState() => _ComplaintTabBarState();
}

class _ComplaintTabBarState extends State<ComplaintTabBar>
    with SingleTickerProviderStateMixin {
  final bool isLoggedIn = false;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
                    : Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NotificationView()));
                                    },
                                    child: const FaIcon(FontAwesomeIcons.bell)),
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
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MessageView()));
                                    },
                                    child: const FaIcon(FontAwesomeIcons.message)),
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
                    ),
              ],
            ),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Complete',
                ),
                Tab(
                  text: 'Pending',
                ),
                Tab(
                  text: 'Pending',
                ),
              ],
              labelColor: AppColor.primaryColor,
              unselectedLabelColor: AppColor.textSecondaryColor,
              indicatorColor: AppColor.primaryColor,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            //NewWidget(),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  ComplaintsView(),
                  Center(child: Text('Content for Tab 2')),
                  Center(child: Text('Content for Tab 3')),
                  Center(child: Text('Content for Tab 4')),
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

