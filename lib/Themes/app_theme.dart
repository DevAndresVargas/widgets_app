

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary =  Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        primaryColor: Colors.purple[900],

        appBarTheme:const AppBarTheme(
          color: Colors.red,
          elevation: 0,
        ),

        // TextButton Theme
        textButtonTheme:  TextButtonThemeData(
        style: (TextButton.styleFrom(foregroundColor: Colors.teal))
            ),
        // floatingActionButton
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary ,
        elevation: 0,
            ),
        // elevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0
                  ),
            ),

        inputDecorationTheme: const  InputDecorationTheme(
                    floatingLabelStyle: TextStyle( color: primary ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary),
                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
                        ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary),
                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )
                        ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10) )

                        )
                ),




  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(

        primaryColor: Colors.yellow[700],

        appBarTheme:  AppBarTheme(
          color: Colors.red[600],
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.black
  );

}
