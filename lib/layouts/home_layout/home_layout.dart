import 'package:flutter/material.dart';

//file addresses
import 'package:finance_app/layouts/home_layout/screens.dart';

class HomeLayout extends StatelessWidget {

 const HomeLayout({super.key});              

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: ( context, constraints ) {
        
        if ( constraints.maxWidth < 550) return const HomeScreenM();
      
        return const HomeView();
            
            
          
          },
          
        
        
    );
   
  }
}

