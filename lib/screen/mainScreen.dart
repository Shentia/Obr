import 'package:blog/colors.dart';
import 'package:blog/gen/assets.gen.dart';
import 'package:blog/model/mockModel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                width: screenWidth,
                height: screenHeight / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.images.banner.path),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              width: screenWidth / 2.5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: SolidColors.colorAlertInfo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 2, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: SolidColors.colorCibcWhite,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        FakeData["limited_time"],
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: SolidColors.colorCibcWhite),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth / 10, right: screenWidth / 10),
              child: Column(
                children: [
                  Text(
                    FakeData["trade_text"],
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: SolidColors.colorCibcDarkGrey,
                          fontWeight: FontWeight.w700,
                          fontSize: screenWidth / 20,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    FakeData["kick_start"],
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: SolidColors.colorCibcMidGrey,
                          fontWeight: FontWeight.w200,
                          fontSize: screenWidth / 25,
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              FakeData["learn_more"],
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    color: SolidColors.colorCibcDarkRed,
                                    fontSize: screenWidth / 25,
                                  ),
                            ),
                            SizedBox(
                              width: screenWidth / 40,
                            ),
                            const Icon(Icons.arrow_forward_ios_outlined,
                                color: SolidColors.colorCibcDarkRed, size: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
                    child: Text(
                      FakeData["deadline"],
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: SolidColors.colorCibcDarkGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth / 25,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 2.5,
              child: Container(
                color: SolidColors.colorCibcDarkGrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 50, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            FakeData["quick_links"].toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: SolidColors.colorCibcWhite),
                          ),
                          Text(
                            FakeData["contactus"],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: SolidColors.colorCibcMidGrey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            FakeData["iamLooking"].toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: SolidColors.colorCibcWhite),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          color: SolidColors.colorCibcDarkRed,
          child: InkWell(
            onTap: () {
              context.go('/signOnScreen');
            },
            child: SizedBox(
              height: screenHeight / 15,
              width: double.infinity,
              child: Center(
                child: Text(
                  FakeData["sign_on"],
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: SolidColors.colorCibcWhite),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
