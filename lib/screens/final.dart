import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: 320,
            width: 320,
            child: Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.contain,
              height: 175,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            height: 150,
            width: 280,
            child: Text(
              'GRACIAS POR TU COMPRA',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'principal');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 45),
                    primary: Color.fromARGB(255, 5, 5, 5),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                    )),
                child: Text('         Listo          ')),
          ),
        ],
      ),
    );
  }
}
