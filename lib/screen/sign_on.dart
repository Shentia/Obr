import 'package:flutter/material.dart';

class SignOnScreen extends StatelessWidget {
  const SignOnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign On'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Sign On'),
      ),
    );
  }
}
