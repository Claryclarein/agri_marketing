import 'package:agri_marketing/screen/login.dart';
import 'package:agri_marketing/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Center(
          child: const Text(
            "AGRISEEDS-MARKETING",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.green,
      ),

      //Body
      body: Container(
        child: ListView(
          children: [
            //IMAGE
            Container(
              width: Get.width,
              height: Get.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sorghum seeds.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //space
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Hey Farmer! Reach out to us for quality and affordable seeds and seedlings",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),

            // LOGIN AND SIGNUP SECTION

            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Already Have an Account?"),

                      //space
                      SizedBox(
                        height: 5,
                      ),

                      //login button
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => Login())));
                        },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("New User? Create Account"),

                      //space
                      SizedBox(
                        height: 5,
                      ),

                      //signup button
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => Signup())));
                        },
                        child: const Text(
                          "SIGNUP",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ))),
                      ),
                      //SIGNUP BUTTON
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
