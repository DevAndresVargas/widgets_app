import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

    final options = const['Megaman','Superman','Batman','Luffy'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    title: const Text('listview Tipo 1'),
    ),
      body: ListView(
          children:  [

          ...options.map(
              (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )
          ).toList(),


             // ListTile(
              //     title: Text('Hola mundo'),
              // ),
          ],
      )
    );
  }
}
