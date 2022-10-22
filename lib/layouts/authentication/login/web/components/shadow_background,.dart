import 'package:flutter/material.dart';

class ShadowBackground extends StatelessWidget {
  
  
  const ShadowBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            
                begin:  Alignment.centerLeft,
                end: Alignment.topRight,
                colors: [ Colors.black, Colors.transparent, Colors.transparent  ] ,
                stops: [
                  0.5, 0.7, 0.5
                ]
              
              ),
             ),
              
    );
  }
}

class _ImageBackground extends StatelessWidget {
  
  const _ImageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/logo/fondo.jpg');
  }
}