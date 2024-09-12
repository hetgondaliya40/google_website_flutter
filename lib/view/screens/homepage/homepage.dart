import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gloabals/utilis/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/verimage/g1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60.sp,
                child: Icon(
                  Icons.person,
                  size: 60.sp,
                ),
              ),
            ),
            SizedBox(
              height: 40.sp,
            ),
            Text(
              "Set up your new Chrome profile",
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "To access your Chrome stuff across all your devices, sign in, then turn on sync.",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.sp,
                  color: Colors.black),
            ),
            SizedBox(height: 30.sp),
            FilledButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(230.sp, 45.sp),
                backgroundColor: const Color(0xff0B57D0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.signpage);
              },
              child: const Text("Sign in"),
            ),
            SizedBox(height: 15.sp),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(
                  230.sp,
                  45.sp,
                ),
              ),
              onPressed: () {},
              child: Text(
                "countinue without an account",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
