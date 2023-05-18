import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:   AppBar(
            title: const Text('Home'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.access_time_outlined),
                title: Text('nombre de la ruta'),
                onTap: () {

                                },
            ),
            separatorBuilder: (_, __) => const Divider() ,
            itemCount: 10
        )
    );
  }
}
