import 'package:flutter/material.dart';
import 'package:widget_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
            title: const Text('Inputs y Forms'),
                ),
            body: const SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                    children: [
                    CustomInputField( labelText: 'Nombre', hintText: 'Nombre de usuario', )

                    ],
                    ),
            ),

                ),
    );
  }
}
