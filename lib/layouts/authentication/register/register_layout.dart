import 'package:flutter/material.dart';

import 'screens.dart';

//file addresses


class RegisterLayout extends StatelessWidget {

 const RegisterLayout({super.key});              

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: ( context, constraints ) {
        
          if ( constraints.maxWidth < 550) return const RegisterScreenM();
          return const RegisterView();
            
        },
        
    );
   
  }
}