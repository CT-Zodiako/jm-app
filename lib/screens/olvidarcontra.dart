import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OlvidarContra extends StatelessWidget {
  const OlvidarContra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(children: [
              Image.asset(
                'assets/logo.jpg',
                height: 250.0,
              ),
              _CreateTitulo(),
              _CreateSubtitulo(),
              _CreateCampocorreo(),
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
        child: Text('ENVIAR'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'login');
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

class _CreateCampocorreo extends StatelessWidget {
  const _CreateCampocorreo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: .0, vertical: 40.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Correo Electrónico o numero de telefono: ",
            fillColor: Color.fromARGB(255, 221, 221, 221),
            filled: true),
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
      "Escribe tu correo electronico o numero de telefono y recibiras una nueva contraseña",
      style: TextStyle(
          color: Color.fromARGB(255, 68, 65, 65),
          fontSize: 19.0,
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
      "¿Olvidaste tu Contraseña?",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 35.0,
          fontWeight: FontWeight.bold),
    );
  }
}
