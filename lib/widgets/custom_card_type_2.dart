import 'package:flutter/material.dart';
import 'package:widget_app/screens/screens.dart';

class CustomCardType2 extends StatelessWidget {
    final String imageURL;
    final String? name;

  const CustomCardType2({
      super.key,
      required  this.imageURL,
      this.name
  });


  @override
  Widget build(BuildContext context) {
      return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.7),
      child: Column(
          children: [
           FadeInImage(
              image: NetworkImage(imageURL),
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration:  const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
            child: Text(name ?? 'pierre el tryhard'))
          ],
          ),
    );
  }
}
