import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_text_form_field.dart';
import 'package:rrr/views/signin_views/signin_view_page_two.dart';

import '../../utils/widgets/custom_elevated_button.dart';

class SignInViewPageOne extends StatelessWidget {
  const SignInViewPageOne({super.key});

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
                    'Enter your registered CNIC Number',
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
              CustomTextFormField(
                hintText: 'Ex: 35xxx-xxxxxxx-x',
                onPressed: () {},
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomElevatedButton(
                  width: size.width * .60,
                  height: 50,
                  text: 'Sign In',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInViewPageTwo()));
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
