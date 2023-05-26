import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context ) {
      showCupertinoDialog(
          // barrierDismissible: true,
          context: context,
          builder: (context) {
          return  CupertinoAlertDialog(
          title: const Text('TITULO'),
          content: const Column(
          mainAxisSize: MainAxisSize.min,
              children:  [
              Text('este es el contenido'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
              ],

              ),
                        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child:  Text('Cancelar', style: TextStyle( color: Colors.red ),)
          ),TextButton(
              onPressed: () => Navigator.pop(context),
              child:  Text('Aceptar')
          )
          ],



                  );
          }
      );

  }

  void displayDialogAndroid(BuildContext context){
      showDialog(
          // barrierDismissible: true,
          context: context,
          builder:(context){
          return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15) ),
          content: Column(
          mainAxisSize: MainAxisSize.min,
              children: const [
              Text('este es el contenido'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
              ],
              ),
          actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('cancelar',style: TextStyle( color: Colors.red ),)
          ),TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('ok')
          )
          ],
                  );
         }
      );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
          child:ElevatedButton(
          // style: ElevatedButton.styleFrom(
          // primary: Colors.indigo,
          // shape: const StadiumBorder(),
          // elevation: 0
          //         ),


            child: const Padding(
                padding:  EdgeInsets.all(20),
                child:  Text('Mostrar alerta',style: TextStyle(fontSize: 16)),
              ),
            // onPressed: () =>displayDialogAndroid ( context )
                onPressed: () =>Platform.isIOS
                ?  displayDialogIOS ( context )
                :  displayDialogAndroid(context)
            ),

      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () =>  Navigator.pop(context)
      ),
    );
  }
}
