import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';
import 'package:graduation_project11/features/stores/screen/cafes_screen.dart';
import 'package:graduation_project11/features/stores/screen/dessert_shop_screen.dart';
import 'package:graduation_project11/features/stores/screen/hypermarkets_screen.dart';
import 'package:graduation_project11/features/stores/screen/pharmacies_screen.dart';
import 'package:graduation_project11/features/stores/screen/restaurant_screen.dart';
import 'package:graduation_project11/features/stores/widgets/category_card.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.secondary,
      appBar: CustomAppBar(title: 'Stores'),
      body: Column(
        children: [
          SizedBox(height: 20), // ترك مسافة من الأعلى
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppTheme.light.colorScheme.secondary,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CategoryCard(
                          title: 'Hypermarkets',
                          imagePath: 'assets/images/hypermarkets.jpg',
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HypermarketsScreen(),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: CategoryCard(
                          title: 'Cafes',
                          imagePath: 'assets/images/cafes.jpg',
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CafesScreen(),
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CategoryCard(
                          title: 'Restaurants',
                          imagePath: 'assets/images/restaurants.jpg',
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RestaurantScreen(),
                                ),
                              ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: CategoryCard(
                          title: 'Dessert shops',
                          imagePath: 'assets/images/desserts.jpg',
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DessertShopScreen(),
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CategoryCard(
                          title: 'Pharmacies',
                          imagePath: 'assets/images/pharmacies.jpg',
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PharmaciesScreen(),
                                ),
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
