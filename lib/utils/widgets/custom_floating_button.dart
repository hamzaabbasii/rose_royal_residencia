import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rrr/controllers/floating_controller/floating_controller.dart';

import '../theme/color.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({
    super.key,
  });
  final floatingController = Get.put(FloatingController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.only(bottom: 25),
      child: Obx(
        () => Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                AppColor.gradientColor1,
                AppColor.gradientColor2,
                AppColor.gradientColor3,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: FloatingActionButton(
            onPressed: floatingController.onFloating,
            backgroundColor: Colors.transparent,
            shape: const CircleBorder(),
            elevation: 0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              transitionBuilder: (child, Animation<double> animation) =>
                  RotationTransition(
                turns: child.key == const ValueKey('icon1')
                    ? Tween<double>(
                        begin: 1,
                        end: 1.25,
                      ).animate(
                        animation,
                      )
                    : Tween<double>(
                        begin: 1.25,
                        end: 1,
                      ).animate(
                        animation,
                      ),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
              child: FaIcon(
                floatingController.isFloating.value
                    ? FontAwesomeIcons.xmark
                    : FontAwesomeIcons.mapLocationDot,
                key: ValueKey(floatingController.isFloating.value ? 'icon1' : 'icon2'),
                color: AppColor.backgroundColor,
                size: 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
