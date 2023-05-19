import 'package:flutter/material.dart';
import 'package:widget_app/Themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            children: [
            ListTile(
            leading: Icon(Icons.photo_album_sharp, color: AppTheme.primary,),
            title: const Text('soy un titulo'),
            subtitle: const Text('oe ueauoeu uarkaleb uaurhuksho ukanoehukarolch kaosunk hao.rckh uaokunhsaokrcuoh uaoenkhtuaorkc uh uoekaeoruschkansu'),
                ),
            Padding(
              padding: const EdgeInsets.only( right: 5 ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      TextButton(
                          onPressed: (){},
                          child: const Text('Cancel'),
                      ),
                      TextButton(
                          onPressed: (){},
                          child: const Text('Ok')
                      )
                  ],
                 ),
            )
            ],
            ),
        );
  }
}
