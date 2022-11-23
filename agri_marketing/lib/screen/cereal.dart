import 'package:flutter/material.dart';

class Cereal extends StatelessWidget {
  const Cereal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            prefixIcon: Icon(Icons.search),
            hintText: "Cereals",
          ),
        ),
      ),
    );
  }
}