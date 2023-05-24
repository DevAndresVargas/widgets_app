import 'package:flutter/material.dart';
import 'package:widget_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
            title: const Text('card widget'),
                ),
            body: ListView(
                padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
                children: const [

                    CustomCardType1(),
                    SizedBox(height: 10,),
                    CustomCardType2(imageURL:'http://placekitten.com/300/800',name: 'holi',),
                    CustomCardType2(imageURL:'http://placekitten.com/800/600'),
                    CustomCardType2(imageURL:'http://placekitten.com/1920/1080'),

                ],
                )
    );
  }
}
