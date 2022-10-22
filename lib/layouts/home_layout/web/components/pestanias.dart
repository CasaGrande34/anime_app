import 'package:flutter/material.dart';

class Pestanias extends StatelessWidget {
  
  const Pestanias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 50,
     width: 60,
     decoration: buildDecoration(),
     child: const Center(child: Text('Hola')),
    );
  }

  BoxDecoration buildDecoration() => const BoxDecoration(
    
    color: Colors.red,
    
    
  );
}

