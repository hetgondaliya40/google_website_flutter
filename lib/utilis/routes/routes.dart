import 'package:flutter/material.dart';

import '../../screens/conformationpage/conform.dart';
import '../../screens/homepage/homepage.dart';
import '../../screens/passpage/pass.dart';
import '../../screens/propage/profile.dart';
import '../../screens/sign_inpage/sign.dart';
import '../../screens/verficationpage/var.dart';

class Routes {
  static String home_Page = '/';
  static String sign_Page = 'sign_page';
  static String password_Page = 'pass_page';
  static String ver_Page = 'verpage';
  static String sync_Page = 'syncpage';
  static String pro_Page = 'propage';

  static Map<String, WidgetBuilder> myRoutes = {
    home_Page: (context) => const Home(),
    sign_Page: (context) => const SignPage(),
    password_Page: (context) => const PasswordPage(),
    ver_Page: (context) => const Verificationpage(),
    sync_Page: (context) => const ConformPage(),
    pro_Page: (context) => const Profile_Page(),
  };
}
