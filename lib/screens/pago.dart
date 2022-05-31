import 'dart:ui';

import 'package:flutter/material.dart';

class Mediopago extends StatelessWidget {
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
                Navigator.popAndPushNamed(context, 'envio');
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
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Image.asset(
                  "assets/nequi.jpg",
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text('Nequi'),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  '   Nequi   ',
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
                width: 100,
                height: 100,
                color: Colors.red,
                child: Image.asset(
                  "assets/visa.jpg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text('Visa'),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  '    Visa    ',
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
                width: 90,
                height: 90,
                color: Colors.red,
                child: Image.asset(
                  "assets/efectivo.jpg",
                  fit: BoxFit.cover,
                  width: 140,
                  height: 140,
                  alignment: Alignment.centerRight,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Text('Efectivo'),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10))),
                child: Text(
                  ' Efectivo ',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'final');
                },
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
