import 'package:flutter/material.dart';

class Descripcionhom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Navigator.popAndPushNamed(context, 'categoriahom');
              },
            );
          },
        ),
        toolbarHeight: 100,
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
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 30),
              //height: 100,
              child: Column(
                children: [
                  Text(
                    ' camisa Tall',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/camisa2.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: 210,
                    height: 240,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 220,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Camisa  Elegante',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Tela Raso Satin',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            ' Cuello en v',
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 220,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Talla:'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 220,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Color:'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 220,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Cantidad:'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    child: Text('Comprar Ahora'),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'envio');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 45),
                        primary: Colors.black,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5))),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
