import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_text_form_field.dart';
import 'package:rrr/views/signin_views/signin_view_page_one.dart';
import 'package:rrr/views/signin_views/signin_view_page_two.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                height: size.height * 0.02,
              ),
              const Row(
                children: [
                  Text('Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.w600,
                      ),),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              _buildText('Select Country'),
              _buildText('Select City'),
              _buildText('Phone Number'),
              CustomTextFormField(hintText: 'Phone Number', onPressed: (){},),
              _buildText('CNIC Number'),
              CustomTextFormField(hintText: 'Ex: 35xxx-xxxxxxx-x', onPressed: (){},),
              _buildText('Email Address'),
              CustomTextFormField(hintText: 'Abc@gmail.com', onPressed: (){},),
              _buildText('Create Password'),
              CustomTextFormField(hintText: 'Password', onPressed: (){},),
              _buildText('Confirm Password'),
              CustomTextFormField(hintText: 'Password', onPressed: (){},),
              const Row(
                children: [
                  Text(
                    'Enter your registered CNIC Number',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
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
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: size.width * .555,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColor.gradientColor1,
                            AppColor.gradientColor2,
                            AppColor.gradientColor3,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(255, 50),
                        backgroundColor:
                        Colors.transparent, // Set transparent background
                        shadowColor: Colors.transparent, // Remove shadow
                      ),
                      onPressed: () {
                        // Add your onPressed code here!
                        Get.to(() => SignInViewPageTwo());
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
                      Get.to(() => const SignInViewPageOne());
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: AppColor.textPrimaryColor,
                          fontWeight: FontWeight.w600),
                    ),
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
  _buildText(String text) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
