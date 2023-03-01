import 'package:blog/colors.dart';
import 'package:blog/gen/assets.gen.dart';
import 'package:blog/model/mockModel.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SolidColors.colorCibcDarkGrey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.cibcWhiteLogo.path,
                    width: screenWidth * 0.25,
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Text(
                    FakeData["slogan"],
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: SolidColors.colorCibcWhite),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.menu,
              color: SolidColors.colorCibcWhite,
            ),
          ],
        ),
      ),
    );
  }
}
