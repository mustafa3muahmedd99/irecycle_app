// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:graduation_project11/features/auth/update_password/screens/update_password_screen1.dart';

class UpdatePasswordScreen2 extends StatefulWidget {
  const UpdatePasswordScreen2({super.key});

  @override
  State<UpdatePasswordScreen2> createState() => _UpdatePasswordScreen2State();
}

class _UpdatePasswordScreen2State extends State<UpdatePasswordScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.primary,
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  color: AppTheme.light.colorScheme.secondary,
                  size: 24,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset('assets/icons/recycle.png', width: 350),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppTheme.light.colorScheme.secondary,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppTheme.light.colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Your password has been reset",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.light.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      textAlign: TextAlign.center,
                      'Please log back in again using the new password you set, make sure to enter the data correctly to ensure smooth access to your account',
                      style: TextStyle(
                        color: AppTheme.light.colorScheme.primary,
                        fontWeight: FontWeight.w800,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: 150, // حجم الدائرة
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent, // لون الدائرة
                        border: Border.all(
                          color: AppTheme.light.colorScheme.primary,
                          width: 2,
                        ), // إطار أخضر
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock_outline, // أيقونة القفل
                          color:
                              AppTheme.light.colorScheme.primary, // لون القفل
                          size: 60, // حجم الأيقونة
                        ),
                      ),
                    ),
                    const SizedBox(height: 65),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.light.colorScheme.primary,
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Back to sign in",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
