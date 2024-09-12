import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utilis/routes/routes.dart';

class ConformPage extends StatefulWidget {
  const ConformPage({super.key});

  @override
  State<ConformPage> createState() => _ConformPageState();
}

class _ConformPageState extends State<ConformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35.h,
              backgroundImage: const NetworkImage(
                "https://media.licdn.com/dms/image/v2/D4E03AQHaWgdNgTvTeg/profile-displayphoto-shrink_100_100/profile-displayphoto-shrink_100_100/0/1718247152330?e=1728518400&v=beta&t=yQi3Fn4csrqwEjbA6zTDoLaMaIQ_AvpuYoWTRxjT0f4",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Turn on sync",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Back up your stuff and use it on any device",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 143.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_outline,
                            color: const Color(0xff1A73E8),
                            size: 18.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Bookmarks",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.content_paste_outlined,
                            color: const Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Autofill",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.extension,
                            color: const Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Extension",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.devices,
                            color: const Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "History & more",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You can always chooes what to sync in settings. Google may personalize Serch and other ",
              style: TextStyle(fontSize: 7.sp),
            ),
            Text(
              "services based on your history",
              style: TextStyle(fontSize: 7.sp),
            ),
            SizedBox(
              height: 200.h,
            ),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.sp),
                    border: Border.all(
                      width: 1.w,
                      color: const Color(0xff1A73E8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: const Color(0xff1A73E8),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.pro_Page);
                  },
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      color: const Color(0xff1A73E8),
                    ),
                    child: Center(
                      child: Text(
                        "Yes I'm in ",
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.sp),
                    border: Border.all(
                      width: 1.w,
                      color: const Color(0xff1A73E8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "No,Thanks",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: const Color(0xff1A73E8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
