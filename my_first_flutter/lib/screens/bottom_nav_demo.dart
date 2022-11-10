import 'package:flutter/material.dart';

class BottomNavBarDemo extends StatelessWidget {
  const BottomNavBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            //TITLE TEXT
            Text(
              "Botom Navigation Bar Demo",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            //SPACE
            SizedBox(
              height: 30,
            ),
            //DESCRIPTION TEXT
            Text("Bottom Navigation Bar can be used to show case quick menu"),
          ],
        ),
      ),
      //BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          //Respond to item press
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Location"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "News"),
        ],
      ),
    );
  }
}
