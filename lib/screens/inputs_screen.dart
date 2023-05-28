import 'package:flutter/material.dart';
import 'package:widget_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

      final Map<String, String> formValues={
          'first_name': 'andres',
          'last_name': 'vargas',
          'email': 'andres@mail.com',
          'password': '12345',
          'role': 'admin',
      };

    return  Scaffold(
            appBar: AppBar(
            title: const Text('Inputs y Forms'),
                ),
            body:  SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Form(
                key: myFormKey,
                  child: Column(
                      children: [
                      const CustomInputField( labelText: 'Nombre', hintText: 'Nombre de usuario', ),
                      const SizedBox( height: 30 , ),

                      const CustomInputField( labelText: 'Apellido', hintText: 'Apellido de usuario', ),
                      const SizedBox( height: 30 , ),

                      const CustomInputField( labelText: 'Correo', hintText: 'Correo de usuario',textInputType: TextInputType.emailAddress, ),
                      const SizedBox( height: 30 , ),

                      const CustomInputField(labelText: 'Contrasenia', hintText: 'Contrasenia de usuario', textInputType: TextInputType.emailAddress, obscureText: true,),
                      const SizedBox( height: 30 , ),

                      ElevatedButton(
                          onPressed: (){
                        FocusScope.of(context).requestFocus( FocusNode() );
                          if ( !myFormKey.currentState!.validate() ){
                              print('formulario no valido');
                              return;
                          };
                              // TODO: imprimir valores del formulario
                          },
                          child:   const SizedBox(
                              width: double.infinity,
                              child: Center(child: Text('Guardar'))
                          )
                      )
                      ],
                      ),
                ),
            ),

                ),
    );
  }
}
