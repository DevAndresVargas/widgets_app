import 'dart:ui';

import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

    final options = const['Megaman','Superman','Batman','Luffy'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    title: const Text('listview Tipo 2'),
    elevation: 0,
    backgroundColor: Colors.indigo
    ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder:(context, index) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.indigo,),
              title: Text(options[index]),
              onTap: () {},
          ),
          separatorBuilder:(_,__) => Divider(),
      )
      );
  }
}
