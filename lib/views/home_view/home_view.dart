import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:rrr/controllers/floating_controller/floating_controller.dart';
import 'package:rrr/utils/widgets/custom_drawer.dart';
import 'package:rrr/utils/widgets/custom_elevated_button.dart';
import 'package:rrr/utils/widgets/custom_floating_button.dart';
import 'package:rrr/video_player_controller/video_player_controller.dart';
import 'package:rrr/views/signin_views/signin_view_page_one.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final floatingController = Get.put(FloatingController());

  final videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(size: size),
      body: Obx(
        () => Container(
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
                  CustomElevatedButton(
                      text: 'Sign In',
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //       pageBuilder: (
                        //         context,
                        //         animation,
                        //         secondaryAnimation,
                        //       ) =>
                        //           const SignInViewPageOne(),
                        //       transitionsBuilder: (
                        //         context,
                        //         animation,
                        //         secondaryAnimation,
                        //         child,
                        //       ) {
                        //         const begin = Offset(1, 0.0);
                        //         const end = Offset(0.0, 0.0);
                        //         const curve = Curves.easeOut;
                        //         var tween = Tween(begin: begin, end: end).chain(
                        //           CurveTween(curve: curve),
                        //         );
                        //         return SlideTransition(
                        //           position: animation.drive(tween),
                        //           child: child,
                        //         );
                        //       }),
                        // );
                        Get.to(
                          () => const SignInViewPageOne(),
                          transition: Transition.downToUp,
                          duration: const Duration(milliseconds: 500),
                        );
                        // Get.to(() => SignInViewPageOne());
                      },
                      width: size.width * 0.25,
                      height: 40)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              floatingController.isFloating.value
                  ? Expanded(
                      child: Container(
                        width: size.width,
                        height: size.height * 0.74,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          child: FlutterMap(
                            options: const MapOptions(
                              initialCenter: LatLng(51.509364, -0.128928),
                              initialZoom: 9.2,
                            ),
                            children: [
                              TileLayer(
                                urlTemplate:
                                    'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                userAgentPackageName: 'com.example.app',
                              ),
                              RichAttributionWidget(
                                attributions: [
                                  TextSourceAttribution(
                                    'OpenStreetMap contributors',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: (
                            context,
                            index,
                          ) {
                            return Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              decoration: const BoxDecoration(
                                  //color: Colors.green
                                  ),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Post Title',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'Posted Date',
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() {
                                    if (videoController.isInitialized.value) {
                                      return Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SizedBox(
                                            width: size.width,
                                            height: size.height * 0.25,
                                            child: AspectRatio(
                                              aspectRatio: videoController
                                                  .videoPlayerController
                                                  .value
                                                  .aspectRatio,
                                              child: VideoPlayer(videoController
                                                  .videoPlayerController),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              videoController.isPlaying.value
                                                  ? Icons.pause
                                                  : Icons.play_arrow,
                                              size: 40,
                                            ),
                                            onPressed: () {
                                              videoController.playPause();
                                            },
                                          )
                                        ],
                                      );
                                    } else {
                                      return Container(
                                        width: size.width,
                                        height: size.height * 0.25,
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    }
                                  }),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.normal),
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
    );
  }
}
