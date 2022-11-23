import 'package:flutter/material.dart';

class FruitTree extends StatelessWidget {
  const FruitTree({super.key});

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
            hintText: "fruit trees",
          ),
        ),
      ),
    );
  }
}
