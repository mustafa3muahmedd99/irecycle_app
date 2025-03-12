import 'package:flutter/material.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen1> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  Future<void> _completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('first_time', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> onboardingTexts = [
      "مرحبًا بك في تطبيقنا! 📱",
      "هنا يمكنك إدارة حسابك بسهولة 🔑",
      "ابدأ الآن وسجّل الدخول 🚀",
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardingTexts.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    onboardingTexts[index],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardingTexts.length,
              (index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed:
                  _currentIndex == onboardingTexts.length - 1
                      ? _completeOnboarding
                      : () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
              child: Text(
                _currentIndex == onboardingTexts.length - 1
                    ? "ابدأ الآن"
                    : "التالي",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
