import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(
      {super.key,
      required this.img,
      required this.title,
      required this.price,
      required this.order});
  final String img;
  final String title;
  final String price;
  final String order;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height * .12,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height * .2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //space
          SizedBox(
            height: 2,
          ),
          Text(
            title,
          ),
          //space
          SizedBox(
            height: 2,
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          //SPACE
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(order, style: TextStyle(color: Colors.white)),
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
          ),
        ],
      ),
    );
  }
}
