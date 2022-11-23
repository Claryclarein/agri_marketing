import 'package:agri_marketing/screen/product.dart';
import 'package:agri_marketing/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,

        //search bar
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
              hintText: "Search for available seeds",
            ),
          ),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
//top section"
            Text(
              "Place\ your orders",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),

            Row(
              children: [
                Expanded(
                  child: OrderCard(
                      img: "images/sorghum.jpg",
                      title: "Sorghum",
                      price: "Price/Kg: 90",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/gnuts.jpg",
                      title: "Groundnuts",
                      price: "Price/Kg: 150",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/potatovines.jpg",
                      title: "Sweet Potato vines cutting",
                      price: "Price/cutting : 2",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/cassavacuttings.jpg",
                      title: "Cassava cuttings",
                      price: "Price/cutting: 2",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/soyabeans.jpg",
                      title: "Soya Beans",
                      price: "Price/Kg: 90",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/mango.jpg",
                      title: "Mango",
                      price: "Price/seedling: 300",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/oranges.jpg",
                      title: "Orange",
                      price: "Price/seedling: 300",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: OrderCard(
                      img: "images/macadamia.jpg",
                      title: "Macadamia",
                      price: "Price/seedling: 300",
                      order: "Order"),
                ),
                // space
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
