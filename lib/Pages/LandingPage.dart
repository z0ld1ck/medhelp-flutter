import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Validation.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool isLoggedIn=false;

    return isLoggedIn ? const HomePage():const LoginDemo();
  }
}
