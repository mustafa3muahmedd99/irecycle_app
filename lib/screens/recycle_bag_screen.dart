import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project11/core/themes/app__theme.dart';
import 'package:graduation_project11/core/widgets/custom_appbar.dart';
import 'package:graduation_project11/screens/place_order_screen.dart';

class RecycleBagScreen extends StatefulWidget {
  @override
  _RecycleBagScreenState createState() => _RecycleBagScreenState();
}

class _RecycleBagScreenState extends State<RecycleBagScreen> {
  int cansCount = 15;
  int plasticCount = 20;
  int glassCount = 5;

  int getTotalPoints() {
    return (cansCount * 10) + (plasticCount * 5) + (glassCount * 8);
  }

  Widget buildItem(
    String title,
    String image,
    int points,
    int count,
    Function onAdd,
    Function onRemove,
  ) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image, width: 50, height: 50, fit: BoxFit.cover),
          ),
          SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => onRemove(),
                  child: Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppTheme.light.colorScheme.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.remove,
                      color: AppTheme.light.colorScheme.secondary,
                      size: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "$count",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.light.colorScheme.primary,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => onAdd(),
                  child: Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppTheme.light.colorScheme.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: CustomAppBar(
        title: 'Recycle Bag',
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: AppTheme.light.colorScheme.secondary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min, // يخلي الطول على قد المحتوى فقط
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // يخلي الحواف دائرية
                  child: Container(
                    color: Colors.grey[300],
                    width: double.infinity,
                    padding: EdgeInsets.all(10), // عشان يديله مساحة داخلية
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // يخلي الطول على قد المحتوى فقط
                      children: [
                        SizedBox(height: 30),
                        buildItem(
                          "Cans Items",
                          "assets/images/cans1.jpg",
                          150,
                          cansCount,
                          () => setState(() => cansCount += 5),
                          () => setState(() {
                            if (cansCount >= 5) cansCount -= 5;
                          }),
                        ),
                        SizedBox(height: 20),
                        buildItem(
                          "Plastic Bottles",
                          "assets/images/plastic1.jpg",
                          100,
                          plasticCount,
                          () => setState(() => plasticCount += 5),
                          () => setState(() {
                            if (plasticCount >= 5) plasticCount -= 5;
                          }),
                        ),
                        SizedBox(height: 20),
                        buildItem(
                          "Glass Bottles",
                          "assets/images/glass1.jpg",
                          40,
                          glassCount,
                          () => setState(() => glassCount += 5),
                          () => setState(() {
                            if (glassCount >= 5) glassCount -= 5;
                          }),
                        ),
                        SizedBox(height: 15),
                        Divider(color: AppTheme.light.colorScheme.primary),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Fee",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                              Text(
                                "10 EGP",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Points",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                              Text(
                                "${getTotalPoints()} Points",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppTheme.light.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Your personal data will be used only to process your order. For more details, please see  ",
                        style: TextStyle(
                          color: AppTheme.light.colorScheme.primary,
                          fontSize: 13,
                        ),
                      ),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70), // مسافة قبل الزرار
                SizedBox(
                  width: 325,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.light.colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaceOrderScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Place Order",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
