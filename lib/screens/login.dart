//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //@override
  // _LoginWidgetState createState() => _LoginWidgetState();

// class _LoginWidgetState extends State<LoginWidget> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();

//     super.dispose();
//   }

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
            color: Colors.white,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'principal');
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
              height: 170,
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
                  'Ingresa tu numero de telefono, email o usuario',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: TextFormField(
                    //controller: emailController,
                    decoration:
                        InputDecoration(hintText: 'Correo Electrónico:'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: TextFormField(
                    //controller: passwordController,
                    decoration: InputDecoration(hintText: 'Contraseña:'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 160),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'principal');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Color.fromARGB(255, 8, 8, 8),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('   INICIAR SESIÓN   ')),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'registrar');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Color.fromARGB(255, 5, 5, 5),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('   CREAR CUENTA   ')),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    child: Text(
                      'Olvidaste tu Contraseña?',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'recupcontra');
                    },
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        minimumSize: const Size(2, 0),
                        primary: Colors.transparent),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

//   Future signIn() async {
//     await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: emailController.text.trim(),
//       password: passwordController.text.trim(),
//     );
//   }
// }
}
