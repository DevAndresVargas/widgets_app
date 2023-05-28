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
                       CustomInputField(
                          labelText: 'Nombre',
                          hintText: 'Nombre de usuario',
                          formValues: formValues,
                          formProperty: 'first_name',
                      ),
                      const SizedBox( height: 30 , ),

                       CustomInputField(
                          labelText: 'Apellido',
                          hintText: 'Apellido de usuario',
                          formValues: formValues,
                          formProperty: 'last_name',
                      ),
                      const SizedBox( height: 30 , ),

                       CustomInputField(
                          labelText: 'Correo',
                          hintText: 'Correo de usuario',
                          textInputType: TextInputType.emailAddress,
                          formValues: formValues,
                          formProperty: 'email',
                      ),
                      const SizedBox( height: 30 , ),

                       CustomInputField(
                          labelText: 'Contrasenia',
                          hintText: 'Contrasenia de usuario',
                          textInputType: TextInputType.emailAddress,
                          obscureText: true,
                          formValues: formValues,
                          formProperty: 'password',
                      ),
                      const SizedBox( height: 30 , ),


                      DropdownButtonFormField(
                              items: const [
                              DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                              DropdownMenuItem(value: 'SuperUser', child: Text('superUser')),
                              DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                              DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                              ],
                              onChanged: ( value ){
                                  print(value);
                                  formValues['role'] = value ?? 'Admin';
                              }
                      ),
                      ElevatedButton(
                          onPressed: (){
                        FocusScope.of(context).requestFocus( FocusNode() );
                          if ( !myFormKey.currentState!.validate() ){
                              print('formulario no valido');
                              return;
                          }
                              print(formValues);
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
