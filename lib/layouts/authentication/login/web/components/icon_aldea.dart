import 'package:flutter/material.dart';

//dependencies

//file addresses


class IconAldeaHoja extends StatelessWidget {
  
  const IconAldeaHoja({super.key});

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        
        height: 35,
        width: 35,
        child: Image.asset('assets/logo/icono.png', fit: BoxFit.contain,),
        
        
      );
  }
}