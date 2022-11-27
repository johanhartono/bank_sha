/* Author       : Johan
   Created Date : 2022-09-24
*/

import 'dart:async';

import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  //---------------Timer Navi to Destination Page------------------------------
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      );
    });
  }
  //---------------Timer Navi to Destination Page------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        body: Center(
          child: Container(
            width: 155,
            height: 50,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_dark.png'))),
          ),
        ));
  }
}
