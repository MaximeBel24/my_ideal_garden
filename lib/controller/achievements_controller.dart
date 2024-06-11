import 'package:flutter/material.dart';
import 'package:my_ideal_garden/controller/home_controller.dart';
import 'package:my_ideal_garden/views/column_image_view.dart';
import 'package:my_ideal_garden/views/row_image_view.dart';


class AchievementsController extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.energy_savings_leaf, color: Colors.green,),
                        Text("Mon jardin idéale")
                      ],
                    ),
                  )
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                title: const Text("Accueil"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeController()));
                },
              ),
              const ListTile(
                leading: Icon(
                  Icons.build,
                  color: Colors.green,
                ),
                title: Text("Réalisations"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Mon jardin idéale",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        body: const Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Nos réalisations",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Les piscines",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ColumnImageView(imageUrl: "piscine1.jpeg"),
                    ColumnImageView(imageUrl: "piscine2.jpeg"),
                    ColumnImageView(imageUrl: "piscine3.jpeg"),
                    ColumnImageView(imageUrl: "piscine4.jpeg"),
                    ColumnImageView(imageUrl: "piscine5.jpeg"),
                  ],
                ),
              )
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Les jardins",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RowImageView(imageUrl: "jardin1.jpeg"),
                      RowImageView(imageUrl: "jardin2.jpeg"),
                      RowImageView(imageUrl: "jardin3.jpeg"),
                      RowImageView(imageUrl: "jardin4.jpeg"),
                      RowImageView(imageUrl: "jardin5.jpeg"),
                    ],
                  ),
                )
            ),
          ],
        ),
    );
  }
}