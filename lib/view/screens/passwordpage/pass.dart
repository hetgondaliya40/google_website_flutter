import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gloabals/utilis/routes/routes.dart';

class PassPage extends StatefulWidget {
  const PassPage({super.key});

  @override
  State<PassPage> createState() => _PassPageState();
}

class _PassPageState extends State<PassPage> {
  bool pass = false;
  String password = "";
  bool isPassword = true;
  TextEditingController passwordController = TextEditingController();
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
        });
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
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 550.h,
              width: 500.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 2.w),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 40,
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
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 27.h,
                      width: 240.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.sp),
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 20.sp,
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Text(
                              "DhruvKathiriya90@gmail.com",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 17.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 75.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: passwordController,
                          obscureText: isPassword,
                          obscuringCharacter: '.',
                          textInputAction: TextInputAction.done,
                          textAlign: TextAlign.start,
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your password..." : null,
                          onSaved: (val) {
                            password = val!;
                          },
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            // suffixIcon: IconButton(
                            //   onPressed: () {
                            //     isPassword = !isPassword;
                            //     setState(() {});
                            //   },
                            //   icon: Icon((!isPassword)
                            //       ? Icons.visibility
                            //       : Icons.visibility_off),
                            // ),
                            labelText: "Enter Your Password",
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
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.sp,
                              letterSpacing: 1,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.redAccent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: isPassword,
                                onChanged: (val) {
                                  isPassword = val!;
                                  setState(() {});
                                }),
                            const Text("Show Password"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xff1A73E8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 210.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.verpage);
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
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.black),
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
        ],
      ),
    );
  }
}
