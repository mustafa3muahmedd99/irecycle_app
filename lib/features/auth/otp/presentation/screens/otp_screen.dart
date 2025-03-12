// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';

class OtpAuthenticationScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpAuthenticationScreen({super.key, required this.phoneNumber});

  @override
  _OtpAuthenticationScreenState createState() =>
      _OtpAuthenticationScreenState();
}

class _OtpAuthenticationScreenState extends State<OtpAuthenticationScreen> {
  int countdown = 56;
  bool canResend = false;
  bool isInvalidCode = false;
  List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );
  Timer? _timer; // ✅ متغير لحفظ التايمر

  void startTimer() {
    setState(() {
      countdown = 56;
      canResend = false;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        setState(() {
          countdown--;
        });
      } else {
        timer.cancel();
        setState(() {
          canResend = true;
        });
      }
    });
  }

  void verifyCode() {
    String enteredCode =
        controllers.map((controller) => controller.text).join();
    if (enteredCode != "123456") {
      setState(() {
        isInvalidCode = true;
      });
    } else {
      setState(() {
        isInvalidCode = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel(); // ✅ إلغاء التايمر عند الخروج من الصفحة
    super.dispose();
  }

  void _handleBack() {
    _timer?.cancel(); // ✅ إيقاف التايمر
    Navigator.pop(context); // ✅ الرجوع للصفحة السابقة
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.secondary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppTheme.light.colorScheme.primary,
              ),
              onPressed: _handleBack, // ✅ ربط زر الرجوع بالدالة
            ),
            SizedBox(height: 15), // ✅ زودنا المسافة بعد السهم
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    'OTP Authentication',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.light.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 2), // ✅ خليها صغيرة عشان تكون زي الصورة
                  Text(
                    'An authentication code has been \nsent to ${widget.phoneNumber}',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40), // ✅ زودنا المسافة بين النص والصورة
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/otp.jpg',
                      width: 280,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40,
                  height: 70,
                  child: TextField(
                    controller: controllers[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color:
                              isInvalidCode
                                  ? Colors.red
                                  : Colors.green, // ✅ لون أخضر افتراضي
                          width:
                              2, // ✅ خلي الـ border أوضح لما يكون الفيلد مفعّل
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color:
                              isInvalidCode
                                  ? Colors.red
                                  : Colors.green, // ✅ لون أخضر افتراضي
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length == 1 && index < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: 10),
            if (isInvalidCode)
              Center(
                child: Text(
                  'Invalid code. Try again.',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            SizedBox(height: 50), // ✅ زودنا المسافة بين OTP والزر
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.light.colorScheme.primary,
                  minimumSize: Size(325, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: verifyCode,
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.light.colorScheme.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // ✅ المسافة بين الزر ونص "Resend Code"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive OTP? ",
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: canResend ? startTimer : null,
                  child: Text(
                    ' Resend Code ${canResend ? '' : '$countdown s'}',
                    style: TextStyle(
                      color: canResend ? Colors.green : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
