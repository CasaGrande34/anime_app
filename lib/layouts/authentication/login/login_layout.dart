import 'package:flutter/material.dart';

import 'screens.dart';

//file addresses


class LoginLayout extends StatelessWidget {

 const LoginLayout({super.key});              

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: ( context, constraints ) {
        
        if ( constraints.maxWidth < 550) return const LoginScreenM();
      
        return const LoginView();
            
            
          
          },
          
        
        
    );
   
  }
}