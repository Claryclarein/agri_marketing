import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adventure"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      //MAIN CONTENT
      body: Container(
        child: ListView(
          children: [
            //IMAGE
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/angama.jpg"),
                      fit: BoxFit.cover)),
            ),
            //SPACE
            SizedBox(
              height: 25,
            ),
            //TITLE,SUBTITLE SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Angama Mara",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Maasai Mara, Kenya",
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 18,
                ),
                Text("41"),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            //ACTIONS SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FIRST CHILD
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "call",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //SECOND CHILD
                  Column(
                    children: [
                      Icon(Icons.directions, color: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Route",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //THIRD CHILD
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //SPACE
            SizedBox(height: 20),
            //PARAGRAPG SECTION
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    "Angama Mara, Kenya is on 705-hectare site borders the Mara Triangle offering 1.3 km of Rift Valley frontage, its forests and plenty of game directly.Maasai Mara National Reserve, Kenya is within only 26 minutes drive from Angama Mara lodge, home to magnificent African mammals, and fantastic safari adventures await.On the games drives, visitors have the chance to experience new hot air balloon flights, hiking safaris, educational visits to adjacent Maasai villages or just relax at the Angama lodge.")),
          ],
        ),
      ),
      //FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
