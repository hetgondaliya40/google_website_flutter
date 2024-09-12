import 'package:flutter/material.dart';

import '../../../screens/sign_inpage/sign.dart';
import '../../../view/screens/homepage/homepage.dart';
import '../../../view/screens/passwordpage/pass.dart';
import '../../../view/screens/profilepage/propage.dart';
import '../../../view/screens/syncpage/sync.dart';
import '../../../view/screens/verificationpage/verpage.dart';

class Routes {
  static String home_page = '/';
  static String signpage = 'sign_page';
  static String passwordpage = 'pass_page';
  static String verpage = 'verpage';
  static String syncpage = 'syncpage';
  static String propage = 'propage';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const HomePage(),
    signpage: (context) => const SignPage(),
    passwordpage: (context) => const PassPage(),
    verpage: (context) => const VerPage(),
    syncpage: (context) => const SyncPage(),
    propage: (context) => const ProPage(),
  };
}
