import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rrr/Services/feed_service/feed_service.dart';
import 'package:rrr/utils/widgets/custom_navbar.dart';
import 'package:rrr/views/home_view/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final feeds = Get.put(FeedService());
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), _navigateTo);
    feeds.fetchFeeds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/icons/logo.png'),
      ),
    );
  }

  _navigateTo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CustomNavbar(),
      ),
    );
  }
}
