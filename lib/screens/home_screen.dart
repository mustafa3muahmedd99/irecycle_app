// ignore_for_file: deprecated_member_use, library_private_types_in_public_api, unused_element
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/routes/routes_name.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_bottomnavigationbar.dart';
import 'package:graduation_project11/features/balance/presentation/screens/balance_screen.dart';
import 'package:graduation_project11/features/categories/screen/cans/screens/cans_screen.dart';
import 'package:graduation_project11/features/categories/screen/glass/screens/glass_screen.dart';
import 'package:graduation_project11/features/notification/presentation/screens/notications_screen.dart';
import 'package:graduation_project11/features/recycling/presentation/screens/scan_screen.dart';
import 'package:graduation_project11/features/stores/screen/stores_screen.dart';
import 'package:graduation_project11/features/voucher/presentation/screens/voucher_screen.dart';
import 'package:graduation_project11/screens/profile_screen.dart';
import 'package:graduation_project11/screens/recycle_bag_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    BalanceScreen(),
    StoresScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.light.colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.secondary,
      body: Column(
        children: [
          _buildHeader(context, size, theme),
          Expanded(child: _buildContent(context, size, theme)),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Size size, ColorScheme theme) {
    return Container(
      color: theme.primary,
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          const SizedBox(height: 25),
          _buildTopBar(context, size),
          SizedBox(height: 20),
          _buildUserInfo(size),
        ],
      ),
    );
  }

  Widget _buildTopBar(BuildContext context, Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Receiving from',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Row(
              children: [
                Text(
                  'Apartment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    double latitude = 37.7749; // خط العرض
                    double longitude = -122.4194; // خط الطول
                    _launchMapsUrl(latitude, longitude);
                  },
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              color: AppTheme.light.colorScheme.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              icon: Icon(Icons.notifications_none_outlined),
            ),
            SizedBox(),
            IconButton(
              color: AppTheme.light.colorScheme.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecycleBagScreen()),
                );
              },
              icon: Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildUserInfo(Size size) {
    return Row(
      children: [
        CircleAvatar(
          radius: size.width * 0.07,
          backgroundImage: Image.asset('assets/images/muhamed.jpg').image,
        ),
        SizedBox(width: size.width * 0.04),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Afternoon',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045,
              ),
            ),
            Text(
              'Muhamed Ayman',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.035,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context, Size size, ColorScheme theme) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          _buildPointsCard(context, size, theme),
          SizedBox(height: 10),
          _buildCategoriesHeader(),
          SizedBox(height: 10),
          _buildCategoriesGrid(context, size),
          SizedBox(height: 12),
          _buildScanSection(context),
        ],
      ),
    );
  }

  Widget _buildCategoriesHeader() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Categories',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppTheme.light.colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildCategoriesGrid(BuildContext context, Size size) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ العنصر العلوي
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GlassScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 6),
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: AppTheme.light.colorScheme.primary,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/glass1.jpg',
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Glasses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10), // تقليل المسافة
            // ✅ العنصرين السفليين جنب بعض
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: _buildCategoryCard(
                      'assets/images/plastic1.jpg',
                      'Plastic',
                      size,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CansScreen()),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: _buildCategoryCard(
                      'assets/images/cans1.jpg',
                      'Cans',
                      size,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CansScreen()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(
    String imagePath,
    String title,
    Size size,
    VoidCallback onTap, // تغيير النوع من dynamic إلى VoidCallback
  ) {
    return GestureDetector(
      onTap: onTap, // هنا بنستخدم الـ onTap اللي جه من البارامتر
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: AppTheme.light.colorScheme.primary,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                color: AppTheme.light.colorScheme.secondary,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScanSection(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: AppTheme.light.colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'What do you want to recycle?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.light.colorScheme.primary,
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.light.colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScanScreen()),
                ),
            child: const Text(
              'Yalla Scan!',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildPointsCard(BuildContext context, Size size, ColorScheme theme) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/icons/coin.png", width: 40, height: 40),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "2.000 Point",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "+1.400 Points",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(width: 8),
          ],
        ),
        Column(
          children: [
            InkWell(
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VoucherScreen()),
                  ),
              child: Container(
                width: 60, // حجم الزرار
                height: 60,
                decoration: BoxDecoration(
                  color: theme.primary, // لون الخلفية
                  borderRadius: BorderRadius.circular(15), // تدوير الحواف
                ),
                child: const Center(
                  child: Icon(
                    Icons.card_giftcard, // أيقونة "Voucher" (بديل مناسب)
                    size: 35,
                    color: Colors.white, // لون الأيقونة
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Voucher",
              style: TextStyle(
                fontSize: 14,
                color: AppTheme.light.colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

void _launchMapsUrl(double latitude, double longitude) async {
  final url =
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
