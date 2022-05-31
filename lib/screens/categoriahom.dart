import 'package:flutter/material.dart';

class Categoriahom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.keyboard_backspace),
            iconSize: 20.0,
            color: Colors.black,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'menuhom');
            },
          );
        }),
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              fit: BoxFit.contain,
              height: 170,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 05.0,
                  ),
                  height: size.height * 0.33,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Column(children: [
                    Image.asset(
                      "assets/camisa2.jpg",
                      fit: BoxFit.cover,
                      // width: 160,
                      height: 210,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Camisa Tall',
                    ),
                    Text(
                      'Costo: 50.000',
                      style: TextStyle(color: Colors.green),
                    )
                  ]),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'descripcionhom');
                },
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 05.0,
                    ),
                    height: size.height * 0.33,
                    width: size.width * 0.40,
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Image.asset(
                        "assets/camisa1.jpg",
                        fit: BoxFit.cover,
                        // width: 160,
                        height: 210,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Camisa Off'),
                      Text(
                        'Costo: 70.000',
                        style: TextStyle(color: Colors.green),
                      )
                    ])),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                  height: size.height * 0.33,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/camisa3.jpg",
                        fit: BoxFit.cover,
                        //width: 160,
                        //height: 550,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Camisa Black'),
                      Text(
                        'Costo: 55.00',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'descripcion');
                },
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 25.0,
                    ),
                    height: size.height * 0.33,
                    width: size.width * 0.40,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/camisa4.jpg",
                          fit: BoxFit.cover,
                          //width: 160,
                          height: 223,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Camisa None'),
                        Text(
                          'costo: 60.000',
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    )),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
