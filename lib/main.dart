import 'package:flutter/material.dart';
import 'package:myapp/screens/categoria.dart';
import 'package:myapp/screens/descripcion.dart';
import 'package:myapp/screens/envio.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/olvidarcontra.dart';
import 'package:myapp/screens/pago.dart';
import 'package:myapp/screens/principal.dart';

import 'package:myapp/screens/registrar.dart';
import 'package:myapp/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/screens/menu.dart';
import 'package:myapp/screens/notificacion.dart';
import 'package:myapp/screens/carrito.dart';
import 'package:myapp/screens/perfil.dart';
import 'package:myapp/screens/descripcion.dart';
import 'package:myapp/screens/envio.dart';
import 'package:myapp/screens/menuhom.dart';
import 'package:myapp/screens/categoriahom.dart';
import 'package:myapp/screens/descripcionhom.dart';
import 'package:myapp/screens/pago.dart';
import 'package:myapp/screens/final.dart';
//import 'package:firebase_auth/firebase_auth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'splash',
      routes: {
        'splash': (_) => SplashScreen(),
        'login': (_) => Login(),
        'olvidarcontra': (_) => OlvidarContra(),
        'registrar': (_) => Regitrar(),
        'principal': (_) => Principal(),
        'menu': (_) => Menu(),
        'notificacion': (_) => Notificacion(),
        'carrito': (_) => Carrito(),
        'perfil': (_) => Perfil(),
        'categoria': (_) => Categoria(),
        'descripcion': (_) => Descripcion(),
        'envio': (_) => Envio(),
        'menuhom': (_) => Menuhom(),
        'categoriahom': (_) => Categoriahom(),
        'descripcionhom': (_) => Descripcionhom(),
        'mediopago': (_) => Mediopago(),
        'final': (_) => Final(),
      },
      // home: MainPage(),
    );
  }
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: StreamBuilder<User?>(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Menu();
//             } else {
//               return LoginWidget();
//             }
//           },
//         ),
//       );
// }
