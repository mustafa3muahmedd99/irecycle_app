import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/features/auth/otp/presentation/screens/otp_screen.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';

class ForgetPasswordStep1Screen extends StatefulWidget {
  const ForgetPasswordStep1Screen({super.key});

  @override
  State<ForgetPasswordStep1Screen> createState() =>
      _ForgetPasswordStep1ScreenState();
}

class _ForgetPasswordStep1ScreenState extends State<ForgetPasswordStep1Screen> {
  final _formKey = GlobalKey<FormState>(); // تعريف الـ Form Key
  final TextEditingController _mobileController =
      TextEditingController(); // تعريف المتحكم

  void _resetPassword() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => OtpAuthenticationScreen(phoneNumber: '01090696136'),
        ),
      );
    }
  }

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
                padding: const EdgeInsets.only(right: 8),
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
                child: Form(
                  key: _formKey, // ✅ ضيف الـ Form Key هنا
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
                        "Forgot Your Password?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.light.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        textAlign: TextAlign.center,
                        'Please enter the phone number that was previously registered in your account, so that we can send the confirmation code to restore access or verify your account.',
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              color: AppTheme.light.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            controller: _mobileController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This Field is required'; // رسالة الخطأ باللغة العربية
                              }
                              String mobilePattern =
                                  r'^(01[0125][0-9]{8})$'; // نمط رقم الموبايل المصري
                              RegExp mobileRegExp = RegExp(mobilePattern);
                              if (!mobileRegExp.hasMatch(value)) {
                                return 'Please Enter Valid Phone Number'; // رسالة الخطأ باللغة العربية
                              }
                              return null;
                            },
                            keyboardType: TextInputType.phone,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'ُEnter Phone Number',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 15,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: AppTheme.light.colorScheme.primary,
                                  width: 2,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 100),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.light.colorScheme.primary,
                          minimumSize: const Size(double.infinity, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: _resetPassword,
                        child: Text(
                          "Reset Password",
                          style: TextStyle(
                            color: AppTheme.light.colorScheme.secondary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
