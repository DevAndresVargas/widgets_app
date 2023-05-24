import 'package:flutter/material.dart';
import 'package:widget_app/screens/screens.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
      return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.7),
      child: Column(
          children: [
          const FadeInImage(
              image: NetworkImage('http://placekitten.com/2000/1100'),
              placeholder: AssetImage('assets/images/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration:  Duration(milliseconds: 300),
          ),
            Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
            child: Text('pierre el tryhard'))
          ],
          ),
    );
  }
}
