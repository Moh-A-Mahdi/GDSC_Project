// ignore_for_file: unnecessary_null_comparison

import "package:gdsc_project/models/user.dart";
import 'package:gdsc_project/screens/authenticate/authenticate.dart';
import 'package:gdsc_project/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<CurrentUser>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
