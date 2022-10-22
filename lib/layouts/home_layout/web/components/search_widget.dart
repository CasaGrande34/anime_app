import 'package:flutter/material.dart';

//dependencies
import 'package:awesome_icons/awesome_icons.dart';

class SearchWidget extends StatelessWidget {
  
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: buildDecorationSearch(),
      child: Row(children: [
        const Icon(FontAwesomeIcons.arrowCircleRight),
        Container(
          color: Colors.grey,
          child: const Text('Buscar....'),
        )
      ],
      ),
    );
  }

  BoxDecoration buildDecorationSearch() => const BoxDecoration(
    
    color: Colors.amber
    
  );
}
