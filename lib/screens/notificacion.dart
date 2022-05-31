import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notificacion extends StatelessWidget {
  const Notificacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(children: [
              Image.asset(
                'assets/logo.png',
                height: 200.0,
              ),
              _CreateTitulo(),
              _CreateSubtitulo(),
              _CreateSubtitulo2(),
              _CreateEnviar(),
            ])));
  }
}

class _CreateEnviar extends StatelessWidget {
  const _CreateEnviar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: ElevatedButton(
        child: Text('ok'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'menu');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

class _CreateSubtitulo extends StatelessWidget {
  const _CreateSubtitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvenido a nuestra tienda en linea ",
      style: TextStyle(
          color: Color.fromARGB(255, 68, 65, 65),
          fontSize: 19.0,
          fontWeight: FontWeight.normal),
    );
  }
}

class _CreateSubtitulo2 extends StatelessWidget {
  const _CreateSubtitulo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Nueva coleccion de camisas ",
      style: TextStyle(
          color: Color.fromARGB(255, 68, 65, 65),
          fontSize: 20.0,
          fontWeight: FontWeight.normal),
    );
  }
}

class _CreateTitulo extends StatelessWidget {
  const _CreateTitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      " Tus Notificaciones",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 35.0,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
