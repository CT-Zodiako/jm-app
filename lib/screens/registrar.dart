import 'package:flutter/material.dart';

class Regitrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.keyboard_backspace),
            iconSize: 29.0,
            color: Colors.black,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'login');
            },
          );
        }),
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 175,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  'Regístrate',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Nombres:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Apellidos:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Correo Electronico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Contraseña:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Numero de identificacion:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Numero Telefonico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Direccion:'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'login');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Color.fromARGB(255, 5, 5, 5),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('         Ok          ')
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
