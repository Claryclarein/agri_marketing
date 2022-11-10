import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adventure"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/angama.jpg"),
                      fit: BoxFit.cover)),
            ),
            //SPACE
            const SizedBox(
              height: 25,
            ),
            //TITLE,SUBTITLE SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                const Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 18,
                ),
                const Text("41"),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            //ACTIONS SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FIRST CHILD
                  Column(
                    children: const [
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
                    children: const [
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
                    children: const [
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
            const SizedBox(height: 20),
            //PARAGRAPG SECTION
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    "Angama Mara, Kenya is on 705-hectare site borders the Mara Triangle offering 1.3 km of Rift Valley frontage, its forests and plenty of game directly.Maasai Mara National Reserve, Kenya is within only 26 minutes drive from Angama Mara lodge, home to magnificent African mammals, and fantastic safari adventures await.On the games drives, visitors have the chance to experience new hot air balloon flights, hiking safaris, educational visits to adjacent Maasai villages or just relax at the Angama lodge.")),
          ],
        ),
      ),
      //FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
