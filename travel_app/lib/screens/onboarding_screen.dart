import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/constant.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _Onboard1ScreenState();
}

class _Onboard1ScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          _buildOnboarding(
            title: "Life is short and the world is ",
            subTitle: "wide",
            description: onboardingDesc1,
            imageUrl: onboardingImg1,
            btnText: "Get Started",
          ),
          _buildOnboarding(
            title: "It’s a big world out there, go ",
            subTitle: "explore",
            description: onboardingDesc2,
            imageUrl: onboardingImg2,
            btnText: "Next",
          ),
          _buildOnboarding(
            title: " People don’t take trips, trips take ",
            subTitle: "people",
            description: onboardingDesc2,
            imageUrl: onboardingImg3,
            btnText: "Next",
          ),
        ],
      ),
    );
  }

  Widget _buildOnboarding({
    required String title,
    required String description,
    required String imageUrl,
    required String btnText,
    required String subTitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: Image.network(
            imageUrl,
            height: 580,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: subTitle,
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SmoothPageIndicator(
          controller: controller, // PageController
          count: 3,
          effect: WormEffect(),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: GestureDetector(
            onTap: () {
              controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
              );
              if (subTitle == "people") {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(13, 110, 253, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                btnText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
