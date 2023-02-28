import 'package:blog/colors.dart';
import 'package:blog/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //navigate to mainScreen after 3 second with riverpodrouter
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        context.go('/mainScreen');
      },
    );
    // Future.delayed(const Duration(seconds: 3)).then(
    //   (value) {
    //     Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => const MainScreen()));
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: SolidColors.colorCibcDarkGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.images.cibcWhiteLogo.path,
                width: 200,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 25.0,
              )
            ],
          ),
        ));
  }
}
