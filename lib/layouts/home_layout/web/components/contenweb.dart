import 'package:flutter/material.dart';

import '../../../../models/characters_example.dart';
import 'interactive_card/interactive_cards.dart';
import 'pestanias.dart';
import 'search_widget.dart';

class ContentWeb extends StatelessWidget {
  const ContentWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children:  const [
           SizedBox(
            width: 20,
           ),
           Pestanias(),
           SizedBox(
            width: 20,
           ),
           Pestanias(),
           SizedBox(
            width: 20,
           ),
           SearchWidget(),
           SizedBox(
            width: 20,
           ),
           Pestanias(),
           SizedBox(
            width: 20,
           ),
           Pestanias(),
          
           SizedBox(
            width: 20,
           ),

        
         ],
       ),
       const SizedBox(
        height: 200,
       ),
       
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          
          InteractiveCard(
              
              title: characters[0].title,
              description: characters[0].description,
              image: characters[0].image,
              
           ),
          InteractiveCard(
              
              title: characters[1].title,
              description: characters[1].description,
              image: characters[1].image,
              
           ),
          InteractiveCard(
              
              title: characters[2].title,
              description: characters[2].description,
              image: characters[2].image,
              
           ),
          InteractiveCard(
              
              title: characters[3].title,
              description: characters[3].description,
              image: characters[3].image,
              
           ),
           
         ],
       ),
       
     ],
    );
  }
}


