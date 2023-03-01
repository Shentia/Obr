import 'package:blog/features/header.dart';
import 'package:blog/model/mockModel.dart';
import 'package:flutter/material.dart';

class SignOnScreen extends StatelessWidget {
  const SignOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: [
        Header(screenWidth: screenWidth, screenHeight: screenHeight),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
          child: Row(
            children: [
              const Icon(Icons.arrow_forward),
              Text(
                FakeData["sign_on"],
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
        SizedBox(
          height: screenHeight / 10,
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FakeData["sign_on"],
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
