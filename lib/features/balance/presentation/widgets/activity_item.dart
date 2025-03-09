import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';

class ActivityItem extends StatelessWidget {
  final String title;
  final String date;
  final String points;

  const ActivityItem({
    super.key,
    required this.title,
    required this.date,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                Icons.attach_money,
                color: AppTheme.light.colorScheme.primary,
                size: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: AppTheme.light.colorScheme.primary,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: AppTheme.light.colorScheme.primary,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/icons/points.jpeg',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
          Text(
            points,
            style: TextStyle(
              color: AppTheme.light.colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
