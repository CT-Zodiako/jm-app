import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.contain,
              height: 170,
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.all(12),
              height: size.height * 0.25,
              width: size.width * 0.5,
              child: Image.asset(
                "assets/dama.jpg",
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, 'menu');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5))),
            child: Text(
              '   Dama   ',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'menu');
            },
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.all(30),
              height: size.height * 0.25,
              width: size.width * 0.5,
              child: Image.asset(
                "assets/caball.jpg",
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, 'menuhom');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5))),
            child: Text(
              'Caballero',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'menuhom');
            },
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 40)),
              Container(
                width: double.infinity,
                height: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 40,
                      color: Color.fromARGB(255, 8, 8, 8),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'principal');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications),
                      iconSize: 40,
                      color: Color.fromARGB(255, 10, 10, 10),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'notificacion');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 40,
                      color: Color.fromARGB(255, 10, 10, 10),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'carrito');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 40,
                      color: Color.fromARGB(255, 7, 7, 7),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'perfil');
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
