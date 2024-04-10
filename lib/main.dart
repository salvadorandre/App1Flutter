

import 'package:flutter/material.dart';

void main(){ 
  runApp(const MyApp()); 
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Imagenes",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Imagenes del Universo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const Text('Imagenes de James webb'),
              SizedBox(
                height: 250.0,
                width: 350.0,
                child: Image.asset("./assets/webb1.webp", fit: BoxFit.fitWidth,),
              ), 
              SizedBox(
                width: 350.0,
                height: 350.0,
                child: Image.network("https://cdn.forbes.com.mx/2023/08/Nebulosa-Anillo-James-Webb.webp", fit: BoxFit.fitWidth,),
              ) 
            ],
          ),
        ),
      ),
    );
  }
}