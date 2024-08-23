import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_drawer.dart';

class MessageView extends StatelessWidget {
  MessageView({super.key});
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
                      'Messages', // Replace with your text
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
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 20,
                itemBuilder: (context, index) {
                  //final message = messages[index];
                  return Container(
                    width: size.width * 0.3,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 30),
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColor.textFieldBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.textFieldBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.link),
                          SizedBox(
                            width: 15,
                          ),
                          FaIcon(FontAwesomeIcons.microphone),
                          SizedBox(
                            width: 15,
                          ),
                          FaIcon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
