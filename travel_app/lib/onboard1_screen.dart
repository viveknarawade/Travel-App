import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';

class Onboard1Screen extends StatefulWidget {
  const Onboard1Screen({super.key});

  @override
  State<Onboard1Screen> createState() => _Onboard1ScreenState();
}

class _Onboard1ScreenState extends State<Onboard1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
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
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: Image.network(
            imageUrl,
            height: 540,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Text.rich(
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
        Text(
          description,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
