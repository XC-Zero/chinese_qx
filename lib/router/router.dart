import 'package:qx/views/home.dart';

import '../views/login.dart';
import 'package:flutter/material.dart';

var QxRouter = <String, WidgetBuilder>{
  "login": (context) => const Login(),
  "forget_pass": (context) => Login(),
  "home": (context) => Home(),
};
