// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const NameCard());
}

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Card Profile',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: const Column(
            children: [
              // AVATAR 1
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(''),
                backgroundColor: Colors.redAccent,
              ),
              Text(
                'Mellani Silvia P',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'sans serif',
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                '22091397038',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Calibri',
                  letterSpacing: 4,
                ),
              ),
              Divider(
                thickness: 1,
              ),
              // AVATAR 2
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(''),
                backgroundColor: Colors.redAccent,
              ),
              Text(
                'Fauzan Hedar A',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'sans serif',
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                '22091397048',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Calibri',
                  letterSpacing: 4,
                ),
              ),
              Divider(
                thickness: 1,
              ),
              // AVATAR 3
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(''),
                backgroundColor: Colors.redAccent,
              ),
              Text(
                'Aviana Candra A.N',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'sans serif',
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                '22091397059',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Calibri',
                  letterSpacing: 4,
                ),
              ),
              Divider(
                thickness: 1,
              ),
              // AVATAR 4
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(''),
                backgroundColor: Colors.redAccent,
              ),
              Text(
                'Yohana Monalisa S',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'sans serif',
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                '2205102087',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Calibri',
                  letterSpacing: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
