import 'package:flutter/material.dart';
import 'package:my_first_flutter/screens/bottom_nav_demo.dart';
import 'package:my_first_flutter/screens/bottomnav_withfab.dart';
import 'package:my_first_flutter/screens/form_ex.dart';
import 'package:my_first_flutter/screens/home_page.dart';
import 'package:my_first_flutter/widgets/intro_card.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //FIRST CONTAINER
              IntroCard(
                  onClick: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const MyHomePage())));
                  }),
                  img: "images/angama.jpg",
                  cardTitle: "Angama Mara"),
              SizedBox(
                height: 20,
              ),
              //SECOND CONTAINER
              IntroCard(
                  onClick: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const FormEx())));
                  }),
                  img: "images/angama.jpg",
                  cardTitle: "Form Validation"),
              SizedBox(
                height: 20,
              ),
              //THIRD CONTAINER
              IntroCard(
                  onClick: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const BottomNavBarDemo())));
                  }),
                  img: "images/angama.jpg",
                  cardTitle: "Bottom NavBar Demo"),
              SizedBox(
                height: 20,
              ),
              //FORTH CONTAINER
              IntroCard(
                  onClick: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const BottomnavWithFab())));
                  }),
                  img: "images/angama.jpg",
                  cardTitle: "Bottom NavBar with FAB"),
            ],
          ),
        ),
      ),
    );
  }
}
