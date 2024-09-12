import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gloabals/utilis/routes/routes.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  Country country = CountryParser.parseCountryCode('IN');
  void showPicker() {
    showCountryPicker(
      context: context,
      favorite: ['IN', 'US', 'CA'],
      countryListTheme: const CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Colors.white,
        inputDecoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: ("Serch Your Country here... "),
        ),
      ),
      onSelect: (country) {
        setState(() {
          this.country = country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 550.h,
                  width: 500.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.2), width: 2.w),
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.sp,
                      right: 40.sp,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 83.w,
                          color: Colors.white,
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJpwUvZMFKp_kXyJA2yd8zulrzNfK4ZIOgQ&s",
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Sign in to Chorme",
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Text("Use your Google Account"),
                        SizedBox(
                          height: 35.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email or Phone ",
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                                labelText: ("Email or Phone"),
                                focusedBorder: const OutlineInputBorder(),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.redAccent,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                if (!value.contains('gmail')) {
                                  return 'Please enter a valid email';
                                }
                                if (!value.contains('.com')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Forgot email?",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: const Color(0xff1A73E8),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Text(
                              "Not Your Computer? Use Guest mode to sign ion privetly.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Learn more about using Guest mode",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff1A73E8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Create accounts",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xff1A73E8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 230.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.passwordpage);
                              },
                              child: GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.pushNamed(
                                        context, Routes.passwordpage);
                                  }
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff1A73E8),
                                    borderRadius: BorderRadius.circular(5.sp),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.dg),
                child: Row(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    Container(
                      height: 20.h,
                      width: 150.w,
                      color: Colors.white,
                      child: Container(
                        height: 15.h,
                        width: 25.w,
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () => showPicker(),
                          child: Row(
                            children: [
                              Text(
                                "English (United States)",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.black),
                              ),
                              Icon(
                                Icons.arrow_drop_up,
                                size: 15.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Help",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      "Privacy",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      "Terms",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
