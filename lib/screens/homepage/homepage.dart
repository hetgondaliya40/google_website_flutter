import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utilis/routes/routes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                Navigator.pushNamed(context, Routes.sign_Page);
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
