import 'package:flutter/material.dart';
import 'package:game_of_games/pages/pfn/start.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(147, 204, 97, 1),
      appBar: appBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          makeButton(context, gameContainer("PFN"), PfnHome()),
          makeButton(context, gameContainer("PFN"), PfnHome())
        ],
      ),
    );
  }

  GestureDetector makeButton(BuildContext context, Container child, Widget page) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: child,
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        "Choose a game",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 3.0,
    );
  }

  Container gameContainer(String game) {
    if (game == "PFN") {
      return pfnContainer();
    } else {
      return Container();
    }
  }

  Container pfnContainer() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(20),
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            blurRadius: 10,
            offset: Offset(4, 4),
          )
        ]
      ),
      child: Text(
        "Poetry For Neandrethals",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}