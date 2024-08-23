import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          const SizedBox(height: 67,),
          Image.asset('assets/icons/logo.png', width: size.width * 0.0138, height: size.height * 0.1,),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColor.primaryColor,
                      child: Icon(Icons.person, color: Colors.white,),
                    ),
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('User Name', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, color: AppColor.backgroundColor, fontSize: 18),),
                    //SizedBox(height: 5,),
                    Text('Profile Settings', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: AppColor.textSecondaryColor),),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:40,),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.headphones, color: AppColor.textSecondaryColor,),
            title: const Text('Contact Us', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: AppColor.textSecondaryColor),),
            onTap: (){},
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: AppColor.textSecondaryColor.withOpacity(0.5),)),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.headphones, color: AppColor.textSecondaryColor,),
            title: const Text('About Us', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: AppColor.textSecondaryColor),),
            onTap: (){},
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: AppColor.textSecondaryColor.withOpacity(0.5),)),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.webflow, color: AppColor.textSecondaryColor,),
            title: const Text('Official Website', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, color: AppColor.textSecondaryColor),),
            onTap: (){},
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Divider(color: AppColor.textSecondaryColor.withOpacity(0.5),)),
        ],
      ),
    );
  }
}