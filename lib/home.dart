import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // int _contador = 0;
  //
  // _incrementar(){
  //   setState(() {
  //     _contador++;
  //   });
  // }

  Controller controler = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Observer(
                builder: (_){
                  return Text(
                    "${controler.contador}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 80
                    ),
                  );
                }
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                child: Text(
                  "Incrementar",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40
                  ),
                ),
                onPressed: (){
                  controler.incrementar!();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
