import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final options = const['Megaman', 'Metal Gear', 'Lol','Ajedrez','otro' ];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView.separated(
         itemCount: options.length,
         itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.amber,),
          title: Text(options[index]),
          onTap: () {
            final game = options[index];
            print(game);
          }
          ),
         separatorBuilder: ( _ , __ ) => const Divider(),
      ),
    );
  }
}