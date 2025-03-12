// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:graduation_project11/features/auth/update_password/screens/update_password_screen1.dart';

class ForgetPasswordStep2Screen extends StatelessWidget {
  const ForgetPasswordStep2Screen({super.key});

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
                      "Your account has been verified",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.light.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      textAlign: TextAlign.center,
                      'You will now need to create a new password, save your account and continue using our services securely',
                      style: TextStyle(
                        color: AppTheme.light.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 60),
                    Icon(
                      Icons.mark_email_read_outlined,
                      size: 100,
                      color: AppTheme.light.colorScheme.primary,
                    ),
                    Text(
                      'Your account has been verified',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.light.colorScheme.primary,
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
                            builder: (context) => UpdatePasswordScreen1(),
                          ),
                        );
                      },
                      child: Text(
                        "Update Password",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 130),
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
