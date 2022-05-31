import 'dart:ui';

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.keyboard_backspace),
              iconSize: 29.0,
              color: Colors.black,
              onPressed: () {
                Navigator.popAndPushNamed(context, 'principal');
              },
            );
          },
        ),
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 170,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                color: Colors.red,
                child: Image.asset(
                  "assets/vestido.jpg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  'Vestidos',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'categoria');
                },
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                color: Colors.red,
                child: Image.asset(
                  "assets/blusa.jpg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  '  Blusas  ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                color: Colors.red,
                child: Image.asset(
                  "assets/jean.jpeg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  '   Jeans  ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 35,
                      color: Color.fromARGB(255, 8, 8, 8),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'principal');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications),
                      iconSize: 35,
                      color: Color.fromARGB(255, 10, 10, 10),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'notificacion');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart_rounded),
                      iconSize: 35,
                      color: Color.fromARGB(255, 10, 10, 10),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'carrito');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 35,
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
