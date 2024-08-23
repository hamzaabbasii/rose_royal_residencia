import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rrr/utils/theme/color.dart';
import 'package:rrr/utils/widgets/custom_elevated_button.dart';
import 'package:rrr/utils/widgets/custom_text_form_field.dart';
import '../../utils/widgets/custom_drawer.dart';

class RegisterNewComplaintView extends StatefulWidget {
  const RegisterNewComplaintView({super.key});

  @override
  State<RegisterNewComplaintView> createState() =>
      _RegisterNewComplaintViewState();
}

class _RegisterNewComplaintViewState extends State<RegisterNewComplaintView> {
  final bool isLoggedIn = false;
  final TextEditingController _categoryController = TextEditingController();
  String? _selectedValue;

  final List<String> _options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(size: size),
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  isLoggedIn
                      ? ElevatedButton(
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
                        )
                      : Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const FaIcon(FontAwesomeIcons.bell),
                                Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                const FaIcon(FontAwesomeIcons.message),
                                Positioned(
                                    right: -2,
                                    top: 0,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: AppColor.textSecondaryColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColor.textSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'New Complaint',
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
                height: size.height * 0.03,
              ),
              _buildText('Categories'),
              SizedBox(
                height: size.height * 0.005,
              ),
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
              SizedBox(
                height: size.height * 0.02,
              ),
              _buildText('Sub-Categories'),
              SizedBox(
                height: size.height * 0.005,
              ),
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
              SizedBox(
                height: size.height * 0.02,
              ),
              _buildText('Registration Number'),
              SizedBox(
                height: size.height * 0.005,
              ),
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
              SizedBox(
                height: size.height * 0.02,
              ),
              _buildText('Complaint'),
              SizedBox(
                height: size.height * 0.005,
              ),
              CustomTextFormField(
                hintText: 'Write Details....',
                onPressed: () {},
                lines: 3,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              _buildText('Add Image'),
              SizedBox(
                height: size.height * 0.005,
              ),
              Row(
                children: [
                  Container(
                      width: size.width * 0.25,
                      height: size.height * 0.13,
                      decoration: BoxDecoration(
                        color: AppColor.textFieldBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Colors.black54,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: size.width * 0.25,
                      height: size.height * 0.13,
                      decoration: BoxDecoration(
                        color: AppColor.textFieldBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Colors.black54,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: size.width * 0.25,
                      height: size.height * 0.13,
                      decoration: BoxDecoration(
                        color: AppColor.textFieldBackground,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidSquarePlus,
                          color: Colors.black54,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              CustomElevatedButton(
                width: size.width * .60,
                height: 50,
                text: 'Submit',
                onPressed: () {},
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
