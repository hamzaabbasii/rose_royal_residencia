import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_navbar.dart';
import 'package:rrr/views/signin_views/signin_view_page_two.dart';

import '../../utils/widgets/custom_elevated_button.dart';

class OTPView extends StatelessWidget {
  const OTPView({super.key});
  final int numberOfFields = 5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: size.width,
          height: size.height,
          padding:
              EdgeInsets.only(left: 10, right: 10, top: size.height * 0.06),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Image.asset('assets/icons/logo.png', width: size.width * 0.7),
              SizedBox(
                height: size.height * 0.1,
              ),
              const Row(
                children: [
                  Text(
                    'Enter OTP Code',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              PinCodeTextField(
                appContext: context,
                length: 6,
                  hintCharacter: '*',
                  hintStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 45,
                    activeFillColor: Colors.black,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    errorBorderColor: Colors.black,
                    activeColor: Colors.black,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.black,
                    borderWidth: 1,
                  )
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Check your phone number for code ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '04:38',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomElevatedButton(
                  width: size.width * .60,
                  height: 50,
                  text: 'Sign In',
                  onPressed: () {
                    Get.to(
                      () => const CustomNavbar(),
                    );
                  }),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: AppColor.textPrimaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
