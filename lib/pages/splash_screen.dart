import 'dart:async';
import 'package:flutter/material.dart';
import 'package:teechat/constants/assets.dart';
import 'package:teechat/constants/color.dart';
import 'package:teechat/services/auth/auth_gate.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthGate()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Center(
        child: Image.asset(AssetsManager.logo, width: 150), 
      ),
    );
  }
}
