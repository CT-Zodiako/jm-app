import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(padding: const EdgeInsets.all(20.0), children: [
          Center(
            child: Image.asset(
              'assets/perfil.jpg',
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          _CreateRegistro(),
          _CreateNombres(),
          _CreateCorreoElectronico(),
          _CreateDireccion(),
          _CreateTelefono(),
          _CreateListoButton(),
        ]),
      ),
    );
  }
}

class _CreateRegistro extends StatelessWidget {
  const _CreateRegistro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      child: Text(
        "My perfil",
        style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CreateListoButton extends StatelessWidget {
  const _CreateListoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: ElevatedButton(
        child: Text('ok'),
        onPressed: () {
          Navigator.popAndPushNamed(context, 'menu');
        },
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(100, 45),
            primary: Colors.black,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5))),
      ),
    );
  }
}

class _CreateTelefono extends StatelessWidget {
  const _CreateTelefono({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Numero Telefónico:'),
      ),
    );
  }
}

class _CreateDireccion extends StatelessWidget {
  const _CreateDireccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Dirección:'),
      ),
    );
  }
}

class _CreateCorreoElectronico extends StatelessWidget {
  const _CreateCorreoElectronico({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Correo Electronico:'),
      ),
    );
  }
}

class _CreateNombres extends StatelessWidget {
  const _CreateNombres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Nombre y Apellido:'),
      ),
    );
  }
}
