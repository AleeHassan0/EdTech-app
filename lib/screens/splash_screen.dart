import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_4/screens/intro1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Intro1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              // ignore: avoid_unnecessary_containers
              child: Container(
                // height: 200,
                // width: 300,
                child: Image.asset(
                  'assets/images/kids.png',
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Text(
                'CodeFactory',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
            )
          ],
        ),
      ),
    );
  }
}
