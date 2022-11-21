import 'dart:ui';

import 'package:agri_marketing/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),

      //body section
      backgroundColor: Colors.greenAccent,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
        ),
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),

            //first row
            Row(
              children: [
                Expanded(
                  child: ProductCard(
                      img: "images/groundnuts.jpg", title: "Oil Seeds"),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child:
                      ProductCard(img: "images/sorghum.jpg", title: "Cereals"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //second row
            Row(
              children: [
                Expanded(
                  child: ProductCard(
                      img: "images/groundnuts.jpg", title: "Stem Tubers"),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ProductCard(
                      img: "images/sorghum.jpg", title: "Tree seedlings"),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //TextButton
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Product())));
              },
              child: Text(
                "Proceed",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
