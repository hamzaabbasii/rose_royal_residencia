import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_text_form_field.dart';

import '../../utils/widgets/custom_elevated_button.dart';

class OnlineInstallmentView extends StatefulWidget {
  const OnlineInstallmentView({super.key});

  @override
  State<OnlineInstallmentView> createState() => _OnlineInstallmentViewState();
}

class _OnlineInstallmentViewState extends State<OnlineInstallmentView> {
  bool _isChecked = false;
  final bool isLoggedIn = false;
  final TextEditingController _categoryController = TextEditingController();
  String? _selectedValue;
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.07,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.chevronLeft,
                        size: 14,
                        color: AppColor.textSecondaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: AppColor.textSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Online Installment',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Personal Information',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _buildText('Project'),
              SizedBox(height: 5,),
              DropdownButtonFormField<String>(
                icon: const FaIcon(FontAwesomeIcons.chevronDown),
                decoration: InputDecoration(
                  hintText: 'Select Categories',
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
                ),
                value: _selectedValue,
                items: _options.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select an option';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              _buildText('Registration Number'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'Registration No', onPressed: (){},),
              SizedBox(height: 10,),
              _buildText('Name of Applicant'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'Username', onPressed: (){},),
              SizedBox(height: 10,),
              _buildText('CNIC Number'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'CNIC', onPressed: (){},),
              SizedBox(height: 10,),
              _buildText('Form No'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'Form No', onPressed: (){},),
              SizedBox(height: 10,),
              _buildText('Application Size'),
              SizedBox(height: 5,),
              DropdownButtonFormField<String>(
                icon: const FaIcon(FontAwesomeIcons.chevronDown),
                decoration: InputDecoration(
                  hintText: 'Select Categories',
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
                ),
                value: _selectedValue,
                items: _options.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select an option';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10,),
              _buildText('Email Address'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'Abc@gmail.com', onPressed: (){},),
              SizedBox(height: 10,),
              _buildText('Amount'),
              SizedBox(height: 5,),
              CustomTextFormField(hintText: 'Amount', onPressed: (){},),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(
                      activeColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      value: _isChecked, onChanged: _toggleCheckbox),
                  const Expanded(
                    child: Text(
                      'By submitting this form I agree all the terms & Conditions',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: AppColor.textSecondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              CustomElevatedButton(
                width: size.width * .60,
                height: 50,
                text: 'Submit',
                onPressed: () {},
              ),
              const SizedBox(height: 20,),
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
