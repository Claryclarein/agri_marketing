import 'package:flutter/material.dart';

class BottomnavWithFab extends StatelessWidget {
  const BottomnavWithFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          //TITLE TEXT
          Text(
            "Bottom Navigation Bar Demo with Fab Center-Docked",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          //SPACE
          SizedBox(
            height: 30,
          ),
          //DESCRIPTION TEXT
          Text("Bottom Navigation Bar can be used to show case quick menu"),
        ]),
      ),

      //FAB DOCKED
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.send),
      ),

      //FAB LOCATION
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //BOTTOM NAVBAR with FAB
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.print,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
