// import 'package:flutter/material.dart';
// import 'package:graduation_project11/core/themes/app__theme.dart';
// import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';

// class UpdatePasswordScreen1 extends StatefulWidget {
//   const UpdatePasswordScreen1({super.key});

//   @override
//   State<UpdatePasswordScreen1> createState() => _UpdatePasswordScreen1State();
// }

// class _UpdatePasswordScreen1State extends State<UpdatePasswordScreen1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppTheme.light.colorScheme.primary,
//       body: Stack(
//         children: [
//           Positioned(
//             top: 40,
//             left: 16,
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignInScreen()),
//                 );
//               },
//               child: Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.2),
//                   shape: BoxShape.circle,
//                 ),
//                 child: Icon(
//                   Icons.close,
//                   color: AppTheme.light.colorScheme.secondary,
//                   size: 24,
//                 ),
//               ),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.only(right: 8),
//                 child: Image.asset('assets/icons/recycle.png', width: 350),
//               ),
//               Spacer(),
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: AppTheme.light.colorScheme.secondary,
//                   borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     Container(
//                       width: 40,
//                       height: 5,
//                       decoration: BoxDecoration(
//                         color: AppTheme.light.colorScheme.primary,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       "Forgot Your Password?",
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: AppTheme.light.colorScheme.primary,
//                       ),
//                     ),
//                     const SizedBox(height: 25),
//                     Text(
//                       textAlign: TextAlign.center,
//                       'Please enter the phone number that was previously registered in your account, so that we can send the confirmation code to restore access or verify your account.',
//                       style: TextStyle(
//                         color: AppTheme.light.colorScheme.primary,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Phone Number',
//                           style: TextStyle(
//                             color: AppTheme.light.colorScheme.primary,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 15),
//                         TextFormField(
//                           controller: _mobileController,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return 'This Field is required'; // رسالة الخطأ باللغة العربية
//                             }
//                             String mobilePattern =
//                                 r'^(01[0125][0-9]{8})$'; // نمط رقم الموبايل المصري
//                             RegExp mobileRegExp = RegExp(mobilePattern);
//                             if (!mobileRegExp.hasMatch(value)) {
//                               return 'Please Enter Valid Phone Number'; // رسالة الخطأ باللغة العربية
//                             }
//                             return null;
//                           },
//                           keyboardType: TextInputType.phone,
//                           style: TextStyle(color: Colors.black),
//                           decoration: InputDecoration(
//                             hintText: 'ُEnter Phone Number',
//                             hintStyle: TextStyle(color: Colors.grey),
//                             contentPadding: EdgeInsets.symmetric(
//                               vertical: 10,
//                               horizontal: 15,
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                 color: AppTheme.light.colorScheme.primary,
//                               ),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                 color: AppTheme.light.colorScheme.primary,
//                                 width: 2,
//                               ),
//                             ),
//                             errorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(color: Colors.red),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 100),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: AppTheme.light.colorScheme.primary,
//                         minimumSize: const Size(double.infinity, 55),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                       onPressed: _resetPassword,
//                       child: Text(
//                         "Reset Password",
//                         style: TextStyle(
//                           color: AppTheme.light.colorScheme.secondary,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 140),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/features/auth/sign_in/presentation/screen/sign_in_screen.dart';
import 'package:graduation_project11/features/auth/update_password/screens/update_password_screen2.dart';

class UpdatePasswordScreen1 extends StatefulWidget {
  const UpdatePasswordScreen1({super.key});

  @override
  State<UpdatePasswordScreen1> createState() => _UpdatePasswordScreen1State();
}

class _UpdatePasswordScreen1State extends State<UpdatePasswordScreen1> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool isPasswordValid = false;
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasUpperLower = false;
  bool passwordsMatch = false;
  bool _obscureText = true;

  void _validatePassword(String value) {
    setState(() {
      hasMinLength = value.length >= 8;
      hasNumber = value.contains(RegExp(r'\d'));
      hasUpperLower =
          value.contains(RegExp(r'[A-Z]')) && value.contains(RegExp(r'[a-z]'));

      bool bothFieldsNotEmpty =
          _passwordController.text.isNotEmpty &&
          _confirmPasswordController.text.isNotEmpty;

      passwordsMatch =
          bothFieldsNotEmpty &&
          _passwordController.text == _confirmPasswordController.text;

      isPasswordValid =
          hasMinLength && hasNumber && hasUpperLower && passwordsMatch;
    });
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
                      "Set a new password",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.light.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 35),
                    _buildPasswordField(
                      "Password",
                      _passwordController,
                      "Enter Password",
                    ),
                    const SizedBox(height: 20),
                    _buildPasswordField(
                      "Confirm Password",
                      _confirmPasswordController,
                      "Re-enter Password",
                    ),
                    const SizedBox(height: 25),
                    _buildPasswordValidationRules(),
                    const SizedBox(height: 60),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isPasswordValid
                                ? AppTheme.light.colorScheme.primary
                                : Colors.grey,
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: isPasswordValid ? _updatePassword : null,
                      child: Text(
                        "Save Password",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField(
    String label,
    TextEditingController controller,
    String hintText,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: AppTheme.light.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          obscureText: _obscureText,
          onChanged: (value) {
            _validatePassword(value);
          },
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscureText =
                      !_obscureText; // تغيير الحالة لعرض أو إخفاء الباسورد
                });
              },
            ),
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppTheme.light.colorScheme.primary),
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
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordValidationRules() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildValidationItem(
          "Password must be at least 8 characters long",
          hasMinLength,
        ),
        SizedBox(height: 5),
        _buildValidationItem("Password must contain numbers", hasNumber),
        SizedBox(height: 5),
        _buildValidationItem(
          "Password must contain uppercase and lowercase letters",
          hasUpperLower,
        ),
        SizedBox(height: 5),
        _buildValidationItem(
          "Both passwords must be identical",
          passwordsMatch,
        ),
      ],
    );
  }

  Widget _buildValidationItem(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.cancel,
          size: 15,
          color: isValid ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: isValid ? Colors.green : Colors.red,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  void _updatePassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UpdatePasswordScreen2()),
    );
  }
}
