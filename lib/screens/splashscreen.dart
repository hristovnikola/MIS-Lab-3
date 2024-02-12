import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/authentication.dart';
import 'home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const AuthGate())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(229, 241, 255, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Nikola Hristov",
              style: TextStyle(
                color: Color.fromRGBO(55, 220, 214, 1),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          const Center(
            child: Text(
              "201097",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: "Roboto",
                decoration: TextDecoration.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(height: 20),
          Center(
            child: Image.network(
              'https://images.assetsdelivery.com/compings_v2/fillvector/fillvector2005/fillvector200517636.jpg',
              height: 250,
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
