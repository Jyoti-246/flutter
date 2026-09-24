import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/netflix_home_screen.dart';

class NetflixColne extends StatelessWidget {
  const NetflixColne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
      home: const NetflixHomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    );
  }
}
