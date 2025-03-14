import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';
import 'package:graduation_project11/features/edit_profile/presentation/screens/edit_profile_screen.dart';
import 'package:graduation_project11/features/notification/presentation/screens/notications_screen.dart';
import 'package:graduation_project11/screens/FAQ_screen.dart';
import 'package:graduation_project11/screens/languages_screen.dart';

import 'contact_us_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.secondary,
      appBar: CustomAppBar(
        title: 'Profile',
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            // بيانات المستخدم
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    50,
                  ), // ✅ يحول الصورة إلى دائرة
                  child: Image.asset(
                    'assets/images/muhamed.jpg',
                    width: 60, // تأكد من تحديد العرض
                    height: 60, // تأكد من تحديد الارتفاع
                    fit: BoxFit.cover, // يجعل الصورة تملأ الدائرة بالكامل
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muhamed Ayman",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "+20 01015287461",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.light.colorScheme.primary,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: AppTheme.light.colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                // الإعدادات
                buildListTile(
                  context,
                  icon: Icons.language,
                  title: "Language",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LanguagesScreen(),
                        ),
                      ),
                ),
                SizedBox(height: 5),
                buildListTile(
                  context,
                  icon: Icons.notifications,
                  title: "Notification",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ),
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  'About us',
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                // حول التطبيق
                buildListTile(
                  context,
                  icon: Icons.help,
                  title: "FAQ",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FaqScreen()),
                      ),
                ),
                SizedBox(height: 5),
                buildListTile(
                  context,
                  icon: Icons.contact_mail,
                  title: "Contact Us",
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactUsScreen(),
                        ),
                      ),
                ),
                SizedBox(height: 10),
                Text(
                  'Other',
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                // أخرى
                buildListTile(
                  context,
                  icon: Icons.share,
                  title: "Share",
                  onTap: () {},
                ),
                SizedBox(height: 5),
                buildListTile(
                  context,
                  icon: Icons.system_update,
                  title: "Get The Latest Version",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ويدجت لإعادة استخدام عناصر القائمة
  Widget buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      color: Colors.transparent, // يجعل الخلفية شفافة تمامًا
      elevation: 0, // يمنع الظل حتى يكون شفافًا بالكامل
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(
          color: AppTheme.light.colorScheme.primary,
          width: 1,
        ), // تحديد البوردر باللون الأخضر
      ),
      child: SizedBox(
        height: 55,
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          tileColor: Colors.transparent, // يجعل الـ ListTile أيضًا شفافًا
          leading: Icon(icon, color: AppTheme.light.colorScheme.primary),
          title: Text(
            title,
            style: TextStyle(color: AppTheme.light.colorScheme.primary),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
