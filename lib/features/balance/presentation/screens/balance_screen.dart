// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';
import 'package:graduation_project11/features/balance/presentation/widgets/activity_item.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light.colorScheme.secondary,
      appBar: CustomAppBar(title: 'Balance'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Muhamed Ayman's\n",
                      style: TextStyle(
                        fontSize: 22,
                        color: AppTheme.light.colorScheme.primary,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: 'Balance',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        color: AppTheme.light.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 350,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "POINTS",
                          style: TextStyle(
                            color: AppTheme.light.colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),

                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/points.jpeg',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "2000",
                              style: TextStyle(
                                color: AppTheme.light.colorScheme.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "POINTS",
                              style: TextStyle(
                                color: AppTheme.light.colorScheme.primary,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 40,
                          color: AppTheme.light.colorScheme.primary,
                        ),
                        Text(
                          "REWARDS",
                          style: TextStyle(
                            color: AppTheme.light.colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/rewards.png',
                              width: 30,
                              height: 30,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "100",
                              style: TextStyle(
                                color: AppTheme.light.colorScheme.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "LE",
                              style: TextStyle(
                                color: AppTheme.light.colorScheme.primary,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Icon(Icons.history, color: AppTheme.light.colorScheme.primary),
                SizedBox(width: 8),
                Text(
                  "Last Activity",
                  style: TextStyle(
                    color: AppTheme.light.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ActivityItem(
                    title: "GoRecycle",
                    date: "Dec 12 2024 at 10:00 pm",
                    points: "+3.500 POINTS",
                  ),
                  ActivityItem(
                    title: "GoRecycle",
                    date: "Dec 6 2024 at 10:00 pm",
                    points: "+1.400 POINTS",
                  ),
                  ActivityItem(
                    title: "GoRecycle",
                    date: "Dec 2 2024 at 10:00 pm",
                    points: "+2.300 POINTS",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
