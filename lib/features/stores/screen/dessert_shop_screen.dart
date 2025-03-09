import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';

class DessertShopScreen extends StatefulWidget {
  const DessertShopScreen({super.key});

  @override
  State<DessertShopScreen> createState() => _DessertShopScreenState();
}

class _DessertShopScreenState extends State<DessertShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Dessert Shop'),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(child: Text('Dessert Shop')),
    );
  }
}
