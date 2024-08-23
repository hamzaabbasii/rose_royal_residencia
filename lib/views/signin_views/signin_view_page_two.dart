import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_elevated_button.dart';
import 'package:rrr/views/otp_view/otp_view.dart';
import 'package:rrr/views/signup_view/signup_view.dart';

class SignInViewPageTwo extends StatefulWidget {
  const SignInViewPageTwo({super.key});

  @override
  State<SignInViewPageTwo> createState() => _SignInViewPageTwoState();
}

class _SignInViewPageTwoState extends State<SignInViewPageTwo> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(left: 10, right: 10, top: size.height * 0.06),
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
                  'Enter your Password',
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
            TextFormField(
              obscureText: isObscure,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
                fillColor: AppColor.textFieldBackground,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: FaIcon(isObscure
                      ? FontAwesomeIcons.eyeSlash
                      : FontAwesomeIcons.eye),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            CustomElevatedButton(      width: size.width * .60,
              height: 50, text: 'Sign In', onPressed: ()
            {
              Get.to(() => OTPView());
            },),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => SignUpView());
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: AppColor.textPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
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
    );
  }
}
