import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';

class HypermarketsScreen extends StatefulWidget {
  const HypermarketsScreen({super.key});

  @override
  State<HypermarketsScreen> createState() => _HypermarketsScreenState();
}

class _HypermarketsScreenState extends State<HypermarketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Hypermarkets'),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(child: Text('Hypermarkets Screen')),
    );
  }
}
