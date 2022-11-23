import 'dart:ui';

import 'package:agri_marketing/screen/Order.dart';
import 'package:agri_marketing/screen/cereal.dart';
import 'package:agri_marketing/screen/fruit_tree.dart';
import 'package:agri_marketing/screen/oil_seed.dart';
import 'package:agri_marketing/screen/tuber.dart';
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
                    img: "images/sorghum seeds.jpg",
                    title: "Cereals",
                    onClick: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Cereal()),
                        ),
                      );
                    }),
                  ),
                ),
                //space
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ProductCard(
                    img: "images/gnuts.jpg",
                    title: "Oil Seeds",
                    onClick: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Oilseed()),
                        ),
                      );
                    }),
                  ),
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
                    img: "images/mango.jpg",
                    title: "Fruit Tree Seedlings",
                    onClick: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => FruitTree()),
                        ),
                      );
                    }),
                  ),
                ),
                //space
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ProductCard(
                    img: "images/cassavacuttings.jpg",
                    title: "Tuber crops",
                    onClick: (() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => Tuber()),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //TextButton
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(40),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => Order())));
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
          ],
        ),
      ),
    );
  }
}
