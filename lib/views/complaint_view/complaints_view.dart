import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rrr/views/complaint_view/register_new_complaint_view.dart';

import '../../utils/theme/color.dart';

class ComplaintsView extends StatelessWidget {
  const ComplaintsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.solidBookmark),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Reg# 12345678978',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: AppColor.textSecondaryColor,
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
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.solidBookmark),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Reg# 12345678978',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: AppColor.textSecondaryColor,
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
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.solidBookmark),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Reg# 12345678978',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: AppColor.textSecondaryColor,
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
              const Row(
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
              SizedBox(
                height: 120,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => RegisterNewComplaintView());
                },
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.plus,
                      size: 17,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'Add New Complaint',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
