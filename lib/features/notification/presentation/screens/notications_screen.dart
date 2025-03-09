// ignore_for_file: library_private_types_in_public_api, avoid_print
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';
import 'package:graduation_project11/features/notification/presentation/widgets/notification_header.dart';
import 'package:graduation_project11/features/notification/presentation/widgets/notification_tile.dart';
import 'package:graduation_project11/features/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:graduation_project11/features/notification/data/repositories/notification_repository.dart';
import 'package:graduation_project11/features/notification/data/models/notification_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<NotificationModel> notifications = [];
  final GetNotificationsUseCase _getNotificationsUseCase =
      GetNotificationsUseCase(NotificationRepository());

  @override
  void initState() {
    super.initState();
    fetchNotifications();
  }

  Future<void> fetchNotifications() async {
    try {
      List<NotificationModel> fetchedNotifications =
          await _getNotificationsUseCase.call();
      setState(() {
        notifications = fetchedNotifications;
      });
    } catch (e) {
      print("Error fetching notifications: $e");
    }
  }

  void clearNotifications() {
    setState(() {
      notifications.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: AppTheme.light.colorScheme.secondary,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationHeader(
              hasNotifications: notifications.isNotEmpty,
              onClear: clearNotifications,
            ),
            SizedBox(height: 10),
            Expanded(child: _buildNotificationList()),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationList() {
    if (notifications.isEmpty) {
      return Center(child: Text("No notifications available"));
    }

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return NotificationTile(notification: notifications[index]);
      },
    );
  }
}
