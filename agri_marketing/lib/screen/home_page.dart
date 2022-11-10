import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text("AGRI_MARKETING",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
