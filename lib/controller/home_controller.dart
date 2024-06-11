import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_ideal_garden/controller/achievements_controller.dart';

class HomeController extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
              title: Text("Accueil"),
            ),
            ListTile(
              leading: const Icon(
                Icons.build,
                color: Colors.green,
              ),
              title: const Text("Réalisations"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AchievementsController()));
              },
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
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/piscine4.jpeg")
                , fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text(
                      "Accueil",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 45,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                    )
                    ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                  child: const Center(
                    child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Une expertise unique en Provence au service de \n tous les jardins du monde. \n Rapprochons nous de la nature",
                          style: TextStyle(
                            fontSize: 16
                          ),
                        ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}